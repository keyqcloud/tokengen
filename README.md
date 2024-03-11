# Token Generator Utility

This utility is a simple and efficient way to generate a 256-character long alphanumeric token. It's designed to be easily used and integrated into your workflows or projects where secure and random tokens are needed.

## How It Works
The  `tokengen.sh` script utilizes `openssl` to generate a random string, which is then processed to ensure it's alphanumeric and trimmed to exactly 256 characters. This ensures a consistent and secure token each time the script is executed.

## Getting Started
To use the Token Generator Utility, you can directly execute the `tokengen.sh` script if you have it locally, or you can use `curl` to execute it remotely from the GitHub repository.

## Direct Execution
If you have the script locally, simply run:
```bash
./tokengen.sh
```
This will output a 256-character long alphanumeric token.

## Remote Execution with `curl`
You can also execute the script remotely without downloading it, using `curl`. Here's a step-by-step guide:

1. Use `curl` to fetch and execute the script:
```bash
curl -s https://raw.githubusercontent.com/keyqcloud/tokengen/main/tokengen.sh | bash
```

2. The script will execute, and the generated token will be printed directly to your terminal.

### Example Bash Script
If you want to incorporate this token generator into a larger script or workflow, here's an example script that fetches and executes the `tokengen.sh` script, capturing the token for further use:

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
