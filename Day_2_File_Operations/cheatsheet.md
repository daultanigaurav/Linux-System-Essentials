# 📄 Day 2: File Operations Cheatsheet

### 📁 Navigation
- `pwd` – Show current directory
- `cd /path/to/dir` – Change directory
- `cd ..` – Move up one level

### 📄 File Operations
- `touch file.txt` – Create an empty file
- `cat file.txt` – Show file content
- `less file.txt` – View file page-by-page
- `head -n 5 file.txt` – First 5 lines
- `tail -n 5 file.txt` – Last 5 lines

### 📂 Directory Operations
- `mkdir folder` – Create directory
- `rmdir folder` – Delete empty directory

### 🔄 Copy & Move
- `cp file1.txt file2.txt` – Copy file
- `mv file1.txt newname.txt` – Rename file
- `mv file1.txt /dir/` – Move file to directory

### ❌ Deletion
- `rm file.txt` – Delete file
- `rm -r folder/` – Delete folder and contents

### ⭐ Wildcards
- `ls *.txt` – Match all `.txt` files
- `rm file?.txt` – Match file1.txt, file2.txt, etc.

### 💡 Quotes for special filenames
- `rm "My File.txt"` – Handle spaces/special characters
