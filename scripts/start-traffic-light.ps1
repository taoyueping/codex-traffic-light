$scriptPath = Join-Path $PSScriptRoot "CodexTrafficLight.ps1"

Start-Process `
    -FilePath "powershell.exe" `
    -ArgumentList @(
        "-NoProfile",
        "-WindowStyle", "Hidden",
        "-ExecutionPolicy", "Bypass",
        "-File", "`"$scriptPath`""
    ) `
    -WindowStyle Hidden
