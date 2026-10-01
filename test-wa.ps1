$login = Invoke-RestMethod -Uri 'http://localhost:5000/api/auth/login' -Method Post -Body (@{ email = 'demo@maatrumitra.com'; password = 'Demo@123' } | ConvertTo-Json) -ContentType 'application/json'
$token = $login.token
$headers = @{ Authorization = "Bearer $token" }

Write-Host "== 1. Family Members =="
$family = Invoke-RestMethod -Uri 'http://localhost:5000/api/family' -Headers $headers
$family.members | ForEach-Object { Write-Host "Member: $($_.name) ($($_.relationship)) - Phone: $($_.phone)" }

Write-Host "`n== 2. Notifications =="
$notifs = Invoke-RestMethod -Uri 'http://localhost:5000/api/notifications' -Headers $headers
$notif = $notifs.notifications[0]
Write-Host "First Notif: $($notif.title) - Type: $($notif.type)"

Write-Host "`n== 3. Notification WhatsApp Dispatch =="
$notifWa = Invoke-RestMethod -Uri "http://localhost:5000/api/notifications/$($notif._id)/whatsapp" -Headers $headers
Write-Host "WhatsApp URL: $($notifWa.whatsAppUrl)"
Write-Host "Recipients Count: $($notifWa.recipients.Count)"

Write-Host "`n== 4. Custom WhatsApp to Family Member =="
$body = @{
    phone = "+91 98402 34567"
    recipientName = "Karthik Sundaram"
    title = "🌸 Garbhini Wellness Rhythm"
    message = "Namaste Karthik! 82% daily wellness completed, 1.8L hydration logged. Feeling calm and energized!"
    isEmergency = $false
} | ConvertTo-Json

$customWa = Invoke-RestMethod -Uri "http://localhost:5000/api/notifications/whatsapp-custom" -Headers $headers -Method Post -Body $body -ContentType "application/json"
Write-Host "Custom WhatsApp URL: $($customWa.whatsAppUrl)"
Write-Host "Message: $($customWa.message)"
