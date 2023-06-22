# Flatten Directory Script

This Bash script is designed to manage a main folder with subdirectories. It checks for duplicate filenames within the main folder, moves files from the subdirectories to the main folder, and deletes empty subdirectories.

## Requirements

- Bash (tested with Bash version 4.4)
- Linux or Unix system (the script has been tested on Unraid)

## Usage

1. Download the script and save it on your system.

2. Give execution permission to the script:
   ````bash
   chmod +x script.sh
   ````

3. Run the script and provide the path to the main folder as an argument:
   ````bash
   ./script.sh /path/to/main/folder
   ````

   Make sure you have the necessary permissions to execute the script and access the main folder and its subdirectories.

4. The script will check for duplicate filenames within the main folder and display them if any are found. It will then move all files from the subdirectories to the main folder. Empty subdirectories will also be deleted.

   **Note:** Please make sure to have a backup of your data before running the script to avoid accidental data loss.
   
## License

This script is licensed under the MIT License. For more information, please see the LICENSE file.

## Contributors

- [mirisbowring](https://github.com/mirisbowring) - Developer

## Questions or Issues

If you have any questions or encounter an issue with the script, please create an issue on GitHub.
