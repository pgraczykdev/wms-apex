<#
Runs the WMS application schema users setup (drop-if-exists + create for
WMS_APP, WMS_APP_PROC, WMS_LOG, WMS_LOG_PROC, WMS_APEX) via SQLcl, connecting
as WMS_LIQUIBASE and reading connection details / passwords from a local
.env file.
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

$required = @(
    "SETUP_DB_CONNECT_STRING", "WALLET_DIR", "WMS_LIQUIBASE_PASSWORD",
    "WMS_APP_PASSWORD", "WMS_APP_PROC_PASSWORD",
    "WMS_LOG_PASSWORD", "WMS_LOG_PROC_PASSWORD",
    "WMS_APEX_PASSWORD"
)
foreach ($key in $required) {
    if (-not $envVars.ContainsKey($key)) {
        throw "Missing required key in .env: $key"
    }
}

if (-not (Test-Path $envVars.WALLET_DIR)) {
    throw "WALLET_DIR '$($envVars.WALLET_DIR)' does not exist. Extract the OCI wallet zip there first."
}
$env:TNS_ADMIN = (Resolve-Path $envVars.WALLET_DIR).Path

$users = @(
    @{ Name = "wms_app";      Password = $envVars.WMS_APP_PASSWORD }
    @{ Name = "wms_app_proc"; Password = $envVars.WMS_APP_PROC_PASSWORD }
    @{ Name = "wms_log";      Password = $envVars.WMS_LOG_PASSWORD }
    @{ Name = "wms_log_proc"; Password = $envVars.WMS_LOG_PROC_PASSWORD }
    @{ Name = "wms_apex";     Password = $envVars.WMS_APEX_PASSWORD }
)

$lines = @()
$lines += "SET ECHO OFF"
$lines += "connect WMS_LIQUIBASE/$($envVars.WMS_LIQUIBASE_PASSWORD)@$($envVars.SETUP_DB_CONNECT_STRING)"
foreach ($u in $users) {
    $lines += "@`"$(Join-Path $PSScriptRoot "$($u.Name)\01_drop.sql")`""
}
foreach ($u in $users) {
    $lines += "@`"$(Join-Path $PSScriptRoot "$($u.Name)\02_create.sql")`" $($u.Password)"
}
$lines += "exit"

# Piped via stdin (not passed as a process argument) so none of the passwords
# show up in the OS process list.
$sqlCommands = $lines -join "`n"

$sqlCommands | & sql -thin /nolog
if ($LASTEXITCODE -ne 0) {
    throw "WMS application users setup failed (sql exit code $LASTEXITCODE)"
}

Write-Host "WMS application users setup completed."
