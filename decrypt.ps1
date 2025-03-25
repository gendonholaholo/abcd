param ()

$inputText = [Console]::In.ReadToEnd()
try {
    $bytes = [Convert]::FromBase64String($inputText)
    $decoded = [System.Text.Encoding]::UTF8.GetString($bytes)
    Write-Output $decoded
} catch {
    Write-Output $inputText
}
