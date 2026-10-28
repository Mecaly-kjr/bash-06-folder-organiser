# 🏷 Bash-06-Folder-Organiser

A Bash script that organises files into folders according to their file extensions.

## 📌 Problem Statement

Managing files in a directory can become difficult when different file types are mixed together. Manually sorting images, documents, audio, videos, and archives takes time and can lead to mistakes or duplicate files being overwritten.

---

## 🎯 Project Goals

. Automatically organise files into folders based on their extensions.

. Support uppercase and lowercase file extensions.

. Handle filenames containing spaces and files without extensions.

. Prevent overwriting existing files by adding numbers to duplicate filenames.

. Create category folders only when needed.

. Display a summary of the number of files moved.

. Handle invalid directory paths safely.

---

## 🛠 Tech Stack

Bash: Main scripting language used to organise files.

Linux/Ubuntu: Operating system for running and testing the script.

Git: Version control for tracking project changes.

GitHub: Repository hosting and pull request submission.

ShellCheck / project linter: For checking shell script quality,

---

## 🖥 Features

. Organises images, documents, audio, video, archives, and other files.

. Supports uppercase and lowercase file extensions.

. Handles filenames containing spaces.

. Prevents overwriting files by adding a number to duplicate filenames.

. Creates category folders only when needed.

. Displays the number of files moved.

. Reports an error when the specified folder does not exist.

---

## 📷 Screenshots

![alt text](<assets/images/Screenshot From 2026-10-28 13-39-33.png>)

![alt text](<assets/images/Screenshot From 2026-10-28 15-25-04.png>)

![alt text](<assets/images/Screenshot From 2026-10-28 15-26-03.png>)

## ⚙ Installation & Setup

### Prerequisites

Before using the Folder Organiser, make sure you have:

- Ubuntu/Linux or another Unix-like operating system.
- Bash installed.
- Git installed (to clone the repository).

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR-USERNAME/bash-06-folder-organiser.git
```

Replace `YOUR-USERNAME` with your GitHub username.

### 2. Navigate to the Project Directory

```bash
cd bash-06-folder-organiser
```

### 3. Make the Script Executable

```bash
chmod +x organise.sh
```

### 4. Run the Script

To organise files in the current directory:

```bash
./organise.sh
```

To organise files in a specific directory:

```bash
./organise.sh /path/to/folder
```

### 5. Verify the Results

Check the folders created and the files organised:

```bash
ls
```

To list files in the organised folders:

```bash
find /path/to/folder -maxdepth 2 -type f
```

**Note:** Replace `/path/to/folder` with the actual directory you want to organise. Test the script with a sample folder before using it on important files.

---

## 🧠 Challenges Faced

- Handling filenames with spaces and different extensions.

- Preventing files from being overwritten.

- Debugging and testing the script

---

## 📚 What I Learned

- Bash scripting, loops, conditions, and file handling.

- Error handling and debugging.

- Using Git and GitHub for version control.

---

## 🚀 Future Improvement

- More File Types: Support additional file extensions and categories.

- Undo Functionality: Allow users to restore files to their original locations.

- Interactive Mode: Ask users to confirm actions before moving files.

- Logging: Save a record of moved files and errors in a log file.

- Recursive Organisation: Optionally organise files inside subdirectories.

- Dry-Run Mode: Preview which files will be moved without actually moving them.

- Configuration Options: Allow users to customise category names and file extensions.

- Improved Error Handling: Provide clearer error messages and handle permission problems more effectively.

- Automated Testing: Add more tests to verify that all features work correctly.

---

## 👨🏽‍💻 Author

Mecaly Luther Bobbilla

[mecalyluther64@gmail.com](mailto:mecalyluther64@gmail.com)

Junior Developer | Software Engineering

Based in Cameroon.
