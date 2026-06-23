# set_env.ps1
Get-Content .env | ForEach-Object {
  if ($_ -match '^([^=]+)=(.*)$') {
    [System.Environment]::SetEnvironmentVariable($matches[1], $matches[2])
  }
}
Write-Host "Environment variables loaded from .env"
