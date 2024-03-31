# Create an instance of RNGCryptoServiceProvider
$rng = New-Object System.Security.Cryptography.RNGCryptoServiceProvider

# Create an array of bytes
$bytes = New-Object byte[] 192

# Fill the array with random values
$rng.GetBytes($bytes)

# Convert the bytes to a Base64 string and retain only alphanumeric characters
$token = [Convert]::ToBase64String($bytes) -replace '[^A-Za-z0-9]',''

# Truncate the string to 256 characters
$token = $token.Substring(0, [Math]::Min($token.Length, 256))

# Check if the token was generated and output it
if (-not $token) {
    Write-Output "Token was not generated."
} else {
    Write-Output $token
}
