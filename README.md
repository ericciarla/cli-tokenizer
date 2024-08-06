# CLI Tokenizer

CLI Tokenizer is a simple command-line tool that allows you to count tokens in text using the tiktoken library.

## Installation

You can install CLI Tokenizer using the following command:

```bash
curl -L https://raw.githubusercontent.com/ericciarla/cli-tokenizer/main/install-cli-tokenizer.sh | bash
```

This script will:
1. Create a `~/bin` directory if it doesn't exist.
2. Download the `cli-tokenizer.sh` script and save it as `tokens` in the `~/bin` directory.
3. Make the `tokens` script executable.
4. Attempt to add `~/bin` to your PATH if it's not already there.

After installation, you may need to reload your shell configuration:

For Bash:
```bash
source ~/.bash_profile
```

For Zsh:
```bash
source ~/.zshrc
```

## Usage

Once installed, you can use the `tokens` command followed by your text:

```bash
tokens hello world
```

This will output the token count for the given text.

## Troubleshooting

If you encounter issues after installation, follow these troubleshooting steps:

1. **Verify the script exists:**
   ```bash
   ls -l ~/bin/tokens
   ```
   This should show the `tokens` file in your `~/bin` directory.

2. **Check if `~/bin` is in your PATH:**
   ```bash
   echo $PATH
   ```
   Look for `/Users/yourusername/bin` or `~/bin` in the output.

3. **Add `~/bin` to PATH if it's missing:**
   For Bash:
   ```bash
   echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bash_profile
   ```
   For Zsh:
   ```bash
   echo 'export PATH="$HOME/bin:$PATH"' >> ~/.zshrc
   ```
   Then reload your configuration with `source ~/.bash_profile` or `source ~/.zshrc`.

4. **Run the script directly:**
   ```bash
   ~/bin/tokens hello world
   ```
   If this works but `tokens hello world` doesn't, it's likely a PATH issue.

5. **Check the script content:**
   ```bash
   cat ~/bin/tokens
   ```
   Ensure the script content is correct and complete.

6. **Verify Python and tiktoken:**
   The script requires Python 3 and the tiktoken library. Ensure they are installed:
   ```bash
   python3 --version
   pip3 list | grep tiktoken
   ```

If you're still experiencing issues after trying these steps, please open an issue in this repository with the following information:
- The output of `echo $PATH`
- The content of `~/bin/tokens` (use `cat ~/bin/tokens`)
- The output of running `~/bin/tokens hello world` directly
- Your operating system and shell (Bash/Zsh) version

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License.
