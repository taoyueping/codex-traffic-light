$shortcutPath = Join-Path ([Environment]::GetFolderPath("Startup")) "Codex Traffic Light.lnk"
if (Test-Path -LiteralPath $shortcutPath) {
    Remove-Item -LiteralPath $shortcutPath -Force
}
