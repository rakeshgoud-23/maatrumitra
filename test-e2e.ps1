$baseUrl = "http://localhost:5000/api"
$passCount = 0
$failCount = 0

function Test-Endpoint {
    param(
        [string]$Name,
        [scriptblock]$Action
    )
    try {
        $result = & $Action
        Write-Host "✅ [PASS] $Name" -ForegroundColor Green
        $global:passCount++
        return $result
    } catch {
        Write-Host "❌ [FAIL] $Name : $_" -ForegroundColor Red
        $global:failCount++
        return $null
    }
}

Write-Host "=================================================" -ForegroundColor Cyan
Write-Host "🌸 MAATRUMITRA AUTOMATED FULL-STACK API TEST SUITE" -ForegroundColor Cyan
Write-Host "=================================================" -ForegroundColor Cyan

# 1. Health Check
Test-Endpoint "Health Check Endpoint" {
    $res = Invoke-RestMethod -Uri "$baseUrl/health-check" -Method Get
    if ($res.status -ne "online") { throw "Status is not online" }
    $res
}

# 2. Demo User Login
$loginRes = Test-Endpoint "Demo Login (Lakshmi)" {
    $body = @{ email = "demo@maatrumitra.com"; password = "Demo@123" } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/auth/login" -Method Post -ContentType "application/json" -Body $body
    if (-not $res.success -or -not $res.token) { throw "Login failed" }
    $res
}
$token = $loginRes.token
$headers = @{ Authorization = "Bearer $token" }

# 3. Get Pregnancy Profile
Test-Endpoint "Get Pregnancy Profile" {
    $res = Invoke-RestMethod -Uri "$baseUrl/pregnancy/profile" -Method Get -Headers $headers
    if (-not $res.success -or $res.profile.pregnancyWeek -ne 24) { throw "Invalid profile response" }
    $res
}

# 4. Health Logs
Test-Endpoint "Get Health Logs (7 Days)" {
    $res = Invoke-RestMethod -Uri "$baseUrl/health?days=7" -Method Get -Headers $headers
    if (-not $res.success -or $res.logs.Count -eq 0) { throw "Failed to get health logs" }
    $res
}

Test-Endpoint "Post Health Log" {
    $logBody = @{
        date = (Get-Date).ToString("yyyy-MM-dd")
        weight = 62.5
        heartRate = 79
        systolicBP = 119
        diastolicBP = 77
        waterIntake = 2.1
        sleepHours = 7.5
        exerciseMinutes = 30
        mood = "Great"
        notes = "Felt wonderful after warm ragi malt."
    } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/health" -Method Post -ContentType "application/json" -Headers $headers -Body $logBody
    if (-not $res.success) { throw "Failed to save health log" }
    $res
}

# 5. Diet Planner & Log
Test-Endpoint "Get Diet Overview" {
    $res = Invoke-RestMethod -Uri "$baseUrl/diet" -Method Get -Headers $headers
    if (-not $res.success -or $res.curatedMeals.Count -eq 0) { throw "Failed to get diet info" }
    $res
}

Test-Endpoint "Log South Indian Meal" {
    $mealBody = @{
        mealName = "Ragi Kali with Drumstick Sambar"
        category = "Lunch"
        completed = $true
        calories = 380
        protein = 12
        iron = 4.5
        calcium = 280
        folate = 85
        fiber = 6.2
    } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/diet/log" -Method Post -ContentType "application/json" -Headers $headers -Body $mealBody
    if (-not $res.success) { throw "Failed to log meal" }
    $res
}

# 6. Exercises & Completion Log
Test-Endpoint "Get Exercises Catalog" {
    $res = Invoke-RestMethod -Uri "$baseUrl/exercises" -Method Get -Headers $headers
    if (-not $res.success -or $res.exercises.Count -eq 0) { throw "Failed to fetch exercises" }
    $res
}

Test-Endpoint "Log Exercise Completion" {
    $exBody = @{
        exerciseId = "ex-1"
        exerciseTitle = "Gentle Cat-Cow Spinal Pelvic Tilt"
        category = "Prenatal Stretching"
        durationMinutes = 15
        notes = "Completed morning guided session."
    } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/exercises/log" -Method Post -ContentType "application/json" -Headers $headers -Body $exBody
    if (-not $res.success) { throw "Failed to log exercise completion" }
    $res
}

# 7. Appointments CRUD
$newApt = Test-Endpoint "Create Appointment" {
    $aptBody = @{
        doctorName = "Dr. Radhika Sundaram, MD (OB/GYN)"
        date = (Get-Date).AddDays(5).ToString("yyyy-MM-dd")
        time = "11:00 AM"
        location = "Apollo Cradle Maternity Hospital, Chennai"
        purpose = "25-Week Doppler & Fetal Growth Evaluation"
        notes = "Review hemoglobin and fasting glucose."
        status = "Upcoming"
    } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/appointments" -Method Post -ContentType "application/json" -Headers $headers -Body $aptBody
    if (-not $res.success) { throw "Failed to schedule appointment" }
    $res.appointment
}

Test-Endpoint "Get Appointments" {
    $res = Invoke-RestMethod -Uri "$baseUrl/appointments" -Method Get -Headers $headers
    if (-not $res.success -or $res.appointments.Count -eq 0) { throw "Failed to get appointments" }
    $res
}

# 8. Medications CRUD & Action Log
$newMed = Test-Endpoint "Add Medication Reminder" {
    $medBody = @{
        name = "Calcium Carbonate + Vit D3"
        dosage = "500mg"
        time = "08:30 PM"
        frequency = "Once Daily (Post Dinner)"
        notes = "Take with warm water."
    } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/medications" -Method Post -ContentType "application/json" -Headers $headers -Body $medBody
    if (-not $res.success) { throw "Failed to create medication" }
    $res.medication
}

Test-Endpoint "Log Medication Taken Status" {
    $logBody = @{ status = "taken" } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/medications/$($newMed._id)/log" -Method Post -ContentType "application/json" -Headers $headers -Body $logBody
    if (-not $res.success) { throw "Failed to log medication action" }
    $res
}

# 9. Notifications
Test-Endpoint "Get Notifications" {
    $res = Invoke-RestMethod -Uri "$baseUrl/notifications" -Method Get -Headers $headers
    if (-not $res.success) { throw "Failed to get notifications" }
    $res
}

# 10. Generate Progress Report
Test-Endpoint "Generate Weekly Progress Report" {
    $repBody = @{ period = "weekly" } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/reports/generate" -Method Post -ContentType "application/json" -Headers $headers -Body $repBody
    if (-not $res.success -or -not $res.report) { throw "Failed to generate report" }
    $res
}

# 11. Family Mode
Test-Endpoint "Get Family Support Circle" {
    $res = Invoke-RestMethod -Uri "$baseUrl/family" -Method Get -Headers $headers
    if (-not $res.success -or $res.members.Count -eq 0) { throw "Failed to get family members" }
    $res
}

# 12. AI Educational Assistant Chat (Normal Query)
Test-Endpoint "AI Assistant: Educational Breakfast Query" {
    $aiBody = @{ message = "What South Indian foods are best for breakfast in pregnancy?" } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/assistant/chat" -Method Post -ContentType "application/json" -Headers $headers -Body $aiBody
    if (-not $res.success -or -not $res.data.reply) { throw "AI response missing" }
    $res
}

# 13. AI Educational Assistant Chat (Emergency Detection)
Test-Endpoint "AI Assistant: Emergency Symptom Detection & Warning Alert" {
    $aiEmergencyBody = @{ message = "I have sudden severe bleeding and fluid leakage" } | ConvertTo-Json
    $res = Invoke-RestMethod -Uri "$baseUrl/assistant/chat" -Method Post -ContentType "application/json" -Headers $headers -Body $aiEmergencyBody
    if (-not $res.success -or -not $res.data.isEmergencyAlert) { throw "Emergency was not detected" }
    $res
}

# 14. Registration & Free OTP flow
Test-Endpoint "Registration & Free Demo OTP (123456) Verification" {
    $regEmail = "newmom_" + (Get-Random) + "@example.com"
    $regBody = @{
        name = "Ananya Sharma"
        email = $regEmail
        mobile = "+91 98409 11223"
        password = "Password@123"
        confirmPassword = "Password@123"
    } | ConvertTo-Json
    $regRes = Invoke-RestMethod -Uri "$baseUrl/auth/register" -Method Post -ContentType "application/json" -Body $regBody
    if (-not $regRes.success) { throw "Registration failed" }

    $otpBody = @{
        email = $regEmail
        otp = "123456"
    } | ConvertTo-Json
    $otpRes = Invoke-RestMethod -Uri "$baseUrl/auth/verify-otp" -Method Post -ContentType "application/json" -Body $otpBody
    if (-not $otpRes.success -or -not $otpRes.token) { throw "OTP verification failed" }
    $otpRes
}

Write-Host "=================================================" -ForegroundColor Cyan
Write-Host "TEST SUITE COMPLETED" -ForegroundColor Cyan
Write-Host "Passed: $global:passCount | Failed: $global:failCount" -ForegroundColor $(if ($global:failCount -eq 0) { "Green" } else { "Red" })
Write-Host "=================================================" -ForegroundColor Cyan
