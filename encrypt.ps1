# encrypt.ps1
param ()

$inputText = [Console]::In.ReadToEnd()
$bytes = [System.Text.Encoding]::UTF8.GetBytes($inputText)
$encoded = [Convert]::ToBase64String($bytes)
Write-Output $encoded
