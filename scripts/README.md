# PreProcessRxBuild Script

This script processes files in a directory, filters content based on a specified flag, and copies transformed files to a target directory while preserving the directory structure. It also copies image files directly without transformation.

## Usage

```sh
python script.py <flag>
```


## Configuration

The script reads `root_directory` and `target_directory` from a `config.json` file in the script's directory.

### Example `config.json`

```json
{
    "root_directory": "path/to/source",
    "target_directory": "path/to/target"
}
```

## How It Works

1. **Load Configuration**: The script loads the configuration from `config.json` to get the `root_directory` and `target_directory`.

2. **Process Directory**: It walks through all files and directories in the `root_directory`.

3. **Handle Files**:
    - **Image Files** (`.png`, `.jpg`, `.jpeg`, `.gif`, `.bmp`): copied directly to the `target_directory`.
    - **Other Files**:
        - Reads the file content.
        - Retains lines outside any flagged sections.
        - If the file is a Markdown file (`.md`), it does not remove empty lines.

4. **Save Output**: The content is saved to the corresponding path in the `target_directory`, preserving the original structure.

## Notes

- Ensure the `config.json` file is present in the script's directory.
- The script preserves the directory structure from the `root_directory` to the `target_directory`.

## Example Directory Structure

### Source Directory (`root_directory`)

```
root_directory/
├── file1.txt
├── file2.md
├── image.png
└── subdir/
    └── file3.txt
```

### Target Directory (`target_directory`)

```
target_directory/
├── file1.txt
├── file2.md
├── image.png
└── subdir/
    └── file3.txt
```
