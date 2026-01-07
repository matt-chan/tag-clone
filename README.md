# tag-clone

A command-line tool that copies macOS file tags from JPG files to their corresponding ARW (Sony RAW) files.

## Description

When you have image pairs (e.g., `IMG_001.jpg` and `IMG_001.arw`), this tool copies the macOS Finder tags from the JPG version to the ARW version. This is useful when you've tagged JPG files in Finder and want to apply the same tags to the RAW files.

## Installation

### Using Homebrew (recommended)

```bash
# Tap the repository (replace with your actual tap)
brew tap yourusername/tools

# Install
brew install tag-clone
```

### Manual Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/tag-clone.git
cd tag-clone

# Make the script executable
chmod +x bin/tag-clone

# Copy to a directory in your PATH
cp bin/tag-clone /usr/local/bin/
```

## Dependencies

- macOS (uses macOS file tags)
- [tag](https://github.com/jdberry/tag) - Install with `brew install tag`

## Usage

```bash
# Basic usage - process a directory
tag-clone /path/to/photos

# Dry run - see what would be done without making changes
tag-clone --dry-run /path/to/photos

# Process directories recursively
tag-clone --recursive /path/to/photos

# Quiet mode - only show errors
tag-clone --quiet /path/to/photos
```

### Options

| Option | Description |
|--------|-------------|
| `-h, --help` | Show help message |
| `-v, --version` | Show version information |
| `-d, --dry-run` | Show what would be done without making changes |
| `-r, --recursive` | Process directories recursively |
| `-q, --quiet` | Suppress non-error output |

## Examples

```bash
# Copy tags for all JPG/ARW pairs in your Pictures folder
tag-clone ~/Pictures

# Preview changes before applying them
tag-clone --dry-run ~/Pictures/2024-Vacation

# Process an entire photo library recursively
tag-clone -r /Volumes/Photos
```

## How It Works

1. Scans the specified directory for JPG/JPEG files
2. For each JPG file, looks for a corresponding ARW file with the same base name
3. Reads the macOS Finder tags from the JPG file using the `tag` utility
4. Applies those same tags to the ARW file

## License

MIT License - see LICENSE file for details.
