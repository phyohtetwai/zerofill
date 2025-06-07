# Zero Fill Secure Delete Script

This Bash script securely overwrites a file with zeros using the `dd` command and then deletes it permanently.

## Features
- Uses `dd` to overwrite a file with zeros for secure deletion.
- Automatically detects file size for precise overwriting.
- Deletes the file after the overwrite process.

## Usage

1. Clone the repository or copy the script:
   ```bash
   git clone https://github.com/phyohtetwai/zerofill.git

2. Permission the script:
   ```bash
   chmod +x zerofill.sh

3. Sample usage of script:
   ```bash
   ./zerofill.sh /path/to/file.txt
