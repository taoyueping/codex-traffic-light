# Codex Traffic Light

A small Windows always-on-top traffic light for Codex Desktop.

## Requirements

- Windows 10 or later
- Windows PowerShell 5.1
- Codex Desktop

## Lights

- Yellow: Codex is working.
- Flashing yellow: Codex needs approval or user input.
- Green: the observed Codex runs are complete.
- Red: no readable Codex session is available or status reading failed.

The monitor only reads JSONL files under `%CODEX_HOME%\sessions`. It does not edit sessions, approve commands, or send data over the network.

## Scripts

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\start-traffic-light.ps1
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\stop-traffic-light.ps1
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\CodexTrafficLight.ps1 -Probe
```

Enable or disable launch at sign-in:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\install-startup.ps1
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\scripts\uninstall-startup.ps1
```

## Test

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\tests\test-status-engine.ps1
```

## License

[MIT](LICENSE)
