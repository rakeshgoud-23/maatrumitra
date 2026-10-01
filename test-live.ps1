$body = @{ email = "demo@maatrumitra.com"; password = "Demo@123" } | ConvertTo-Json
$headers = @{ "x-vercel-protection-bypass" = "YHklEPgPdmyiJXBKTMm0IgRpGdzIyHJF"; "Content-Type" = "application/json" }

$res = Invoke-RestMethod -Uri "https://maatrumitra.vercel.app/api/auth/login" -Method Post -Body $body -Headers $headers
Write-Host "LOGIN SUCCESS: $($res.success)"
Write-Host "USER: $($res.user.name)"
Write-Host "EMAIL: $($res.user.email)"
Write-Host "PREGNANCY WEEK: $($res.profile.pregnancyWeek)"

$authHeaders = @{
    "x-vercel-protection-bypass" = "YHklEPgPdmyiJXBKTMm0IgRpGdzIyHJF"
    "Authorization" = "Bearer $($res.token)"
}

$fam = Invoke-RestMethod -Uri "https://maatrumitra.vercel.app/api/family" -Headers $authHeaders
Write-Host "`nFAMILY MEMBERS ON LIVE VERCEL:"
$fam.members | ForEach-Object { Write-Host " - $($_.name) ($($_.relationship)) : $($_.phone)" }

$notifWa = Invoke-RestMethod -Uri "https://maatrumitra.vercel.app/api/notifications/notif-1/whatsapp" -Headers $authHeaders
Write-Host "`nWHATSAPP DISPATCH URL ON LIVE VERCEL:"
Write-Host $notifWa.whatsAppUrl
