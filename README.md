# Day 6: Folder Organiser

A Bash script that automatically organises files into folders based on their file extensions.

## Problem Statement

Managing folders with many different file types can be difficult and time-consuming. Finding files becomes harder when documents, images, audio and videos are mixed together.

## Project Goals

- Automatically organise files into categories.
- Support uppercase and lowercase file extensions.
- Handle filenames containing spaces.
- Prevent files from being overwritten.
- Move files without extensions into the Other folder.
- Display each move and a final summary.

## Features

- Supports Images, Documents, Audio, Video, Archives and Other.
- Creates category folders only when needed.
- Processes only top-level files.
- Leaves existing subfolders untouched.
- Uses numbered filenames when a duplicate exists.

## File Categories

| Category | Extensions |
| Images | JPG, JPEG, PNG, GIF, WEBP |
| Documents | PDF, DOC, DOCX, TXT, XLSX, PPTX |
| Audio | MP3, WAV, M4A |
| Video | MP4, MKV, MOV |
| Archives | ZIP, RAR, TAR, GZ |
| Other | Unknown extensions and files without extensions |

## Installation

Clone the repository:

```bash
git clone https://github.com/Mecaly-kjr/bash-06-folder-organiser.git
cd bash-06-folder-organiser
```

Make the script executable:

```bash
chmod +x organise.sh
```

## Usage

Organise a specific folder:

```bash
./organise.sh /path/to/folder
```

Organise the current folder:

```bash
./organise.sh
```

**Important:** Do not run the script inside your project repository. It moves files, so use a separate test folder to avoid moving your project files.

## How to Test

Create a test folder:

```bash
mkdir -p ~/organiser-test
touch ~/organiser-test/photo.jpg
touch ~/organiser-test/CV.pdf
touch ~/organiser-test/song.mp3
touch ~/organiser-test/movie.mp4
touch ~/organiser-test/notes
```

Run the script:

```bash
./organise.sh ~/organiser-test
```

Check the results:

```bash
find ~/organiser-test -maxdepth 2 -type f
```

## Example Output

```text
Organising /home/user/organiser-test...
Moved: photo.jpg -> Images/photo.jpg
Moved: CV.pdf -> Documents/CV.pdf
Moved: song.mp3 -> Audio/song.mp3
Moved: movie.mp4 -> Video/movie.mp4
Moved: notes -> Other/notes
----------------------------------------
Done: 5 files moved
```

## Challenges Faced

- Handling filenames with spaces and different extensions.
- Preventing files from being overwritten.
- Testing the script with different folder contents.

## What I Learned

- Bash scripting, loops and conditions.
- File handling and error handling.
- Using Git and GitHub for version control.
- Testing and debugging shell scripts.

## Conclusion

This project improved my Bash scripting, problem-solving and automation skills.

## Future Improvements

- Add more supported file extensions.
- Add a dry-run option.
- Add an undo feature.
- Add logging functionality.

## 👨🏽‍💻 Author

Mecaly Luther Bobbilla

[mecalyluther64@gmail.com](mailto:mecalyluther64@gmail.com)

Junior Developer | Software Engineering

Based in Cameroon.
