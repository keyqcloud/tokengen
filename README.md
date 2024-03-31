# Token Generator Utility

This utility is a simple and efficient way to generate a 256-character long alphanumeric token. It's designed to be easily used and integrated into your workflows or projects where secure and random tokens are needed.

## How It Works
The tokengen.sh script for Unix-like systems and the tokengen.bat script for Windows systems both serve the purpose of generating a random, secure, and alphanumeric token of 256 characters. While tokengen.sh utilizes openssl and other Unix-native commands, tokengen.bat leverages PowerShell commands to achieve the same goal on Windows environments.

## Getting Started
To use the Token Generator Utility, you can directly execute the tokengen.sh script on Unix-like systems or the tokengen.bat script on Windows systems if you have them locally. Alternatively, you can use curl (on Unix-like systems) to execute the bash script remotely from a GitHub repository.

### Unix-like Systems

#### Direct Execution
If you have the script locally, simply run:
```bash
./tokengen.sh
```
This will output a 256-character long alphanumeric token.

#### Remote Execution with `curl`
You can also execute the script remotely without downloading it, using `curl`. Here's a step-by-step guide:

1. Use `curl` to fetch and execute the script:
```bash
curl -s https://raw.githubusercontent.com/keyqcloud/tokengen/main/tokengen.sh | bash
```

2. The script will execute, and the generated token will be printed directly to your terminal.

### On Windows Systems

Direct Execution
To execute the script on Windows, run the following in the command prompt:
```batch
.\tokengen.bat
```

Or you can run the PowerShell script version by running the following in PowerShell:
```powershell
.\tokengen.ps1
```
It will generate and display the 256-character long alphanumeric token.

#### Remote Execution with PowerShell

You can also execute the script remotely without downloading it. On Windows, this must be done using the PowerShell script version of `tokengen`. Below is an example of how you can remotely execute `tokengen.ps1`:
```powershell
Invoke-Expression (Invoke-WebRequest -Uri https://raw.githubusercontent.com/keyqcloud/tokengen/main/tokengen.ps1 -UseBasicParsing).Content
```

### Example Usage in Script

#### Bash Script Example
Integrate the token generator into your scripts on Unix-like systems:

```bash
#!/bin/bash

# URL of the raw script on GitHub
script_url="https://raw.githubusercontent.com/keyqcloud/tokengen/main/tokengen.sh"

# Use curl to download and execute the script, then capture the output
token=$(curl -s "$script_url" | bash)

# Output the token or use it as needed
echo "Generated token: $token"
```

To use this script:

1. Save the script to a file, for instance, `fetch_and_generate_token.sh`.
2. Make the script executable: `chmod +x fetch_and_generate_token.sh`.
3. Run the script: `./fetch_and_generate_token.sh`.

The script will output a new 256-character long alphanumeric token each time it is executed.

#### Batch Script Example

For Windows, incorporate the token generator into your batch scripts:
```batch
@echo off
setlocal

:: Call the token generation script
call tokengen.bat

:: Use the token for further operations
echo Generated token: %token%

endlocal
```