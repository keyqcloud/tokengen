@echo off
setlocal

:: Generate a 256-character random token using PowerShell
for /f "delims=" %%a in ('powershell -Command "$rng = New-Object System.Security.Cryptography.RNGCryptoServiceProvider; $bytes = New-Object byte[] 192; $rng.GetBytes($bytes); [Convert]::ToBase64String($bytes) -replace '[^A-Za-z0-9]','' | Select-Object -First 256"') do set "token=%%a"

:: Check if the token was generated
if not defined token (
    echo Token was not generated.
) else (
    echo %token%
)

endlocal
