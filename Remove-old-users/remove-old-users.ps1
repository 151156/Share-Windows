# Days (example: 365 = 1 year)
$thresholdDays = 180
$limit = (Get-Date).AddDays(-$thresholdDays)

Write-Host "== Remove old profiles =="

Get-CimInstance Win32_UserProfile | Where-Object {
    $_.Special -eq $false -and
    $_.Loaded -eq $false -and
    $_.LastUseTime -lt $limit
} | ForEach-Object {
    try {
        Write-Host "Deleting profile: $($_.LocalPath)"
        Remove-CimInstance $_
    } catch {
        Write-Host "ERROR: $($_.LocalPath)"
    }
}