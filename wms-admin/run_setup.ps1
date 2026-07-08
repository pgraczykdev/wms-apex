<#
Runs the WMS_LIQUIBASE setup (drop-if-exists + create role/user) via SQLcl,
reading connection details and the new user's password from a local .env file.
#>

$ErrorActionPreference = "Stop"

if (-not (Get-Command sql -ErrorAction SilentlyContinue)) {
    throw "'sql' (SQLcl) not found on PATH. Add the SQLcl bin directory to your system PATH environment variable."
}

$envFile = Join-Path $PSScriptRoot "..\.env"
if (-not (Test-Path $envFile)) {
    throw ".env not found at $envFile. Copy .env.example to .env and fill in values."
}

$envVars = @{}
Get-Content $envFile | ForEach-Object {
    $line = $_.Trim()
    if ($line -eq "" -or $line.StartsWith("#")) { return }
    $parts = $line -split "=", 2
    if ($parts.Count -eq 2) {
        $envVars[$parts[0].Trim()] = $parts[1].Trim()
    }
}

$required = @("SETUP_DB_USER", "SETUP_DB_PASSWORD", "SETUP_DB_CONNECT_STRING", "WALLET_DIR", "WMS_LIQUIBASE_PASSWORD")
foreach ($key in $required) {
    if (-not $envVars.ContainsKey($key)) {
        throw "Missing required key in .env: $key"
    }
}

if (-not (Test-Path $envVars.WALLET_DIR)) {
    throw "WALLET_DIR '$($envVars.WALLET_DIR)' does not exist. Extract the OCI wallet zip there first."
}
$env:TNS_ADMIN = (Resolve-Path $envVars.WALLET_DIR).Path

$dropScript   = Join-Path $PSScriptRoot "01_drop_admin.sql"
$createScript = Join-Path $PSScriptRoot "02_create_admin.sql"

# Piped via stdin (not passed as a process argument) so the setup connection
# password and the new WMS_LIQUIBASE password don't show up in the OS process list.
$sqlCommands = @"
SET ECHO OFF
connect $($envVars.SETUP_DB_USER)/$($envVars.SETUP_DB_PASSWORD)@$($envVars.SETUP_DB_CONNECT_STRING)
@"$dropScript"
@"$createScript" $($envVars.WMS_LIQUIBASE_PASSWORD)
exit
"@

$sqlCommands | & sql -thin /nolog
if ($LASTEXITCODE -ne 0) {
    throw "WMS_LIQUIBASE setup failed (sql exit code $LASTEXITCODE)"
}

Write-Host "WMS_LIQUIBASE setup completed."
