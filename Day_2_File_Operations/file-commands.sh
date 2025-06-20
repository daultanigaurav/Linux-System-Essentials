
---

### 📜 **`Day_2_File_Operations/file-commands.sh`**
```bash
#!/bin/bash

echo "📂 Creating practice environment..."
mkdir -p examples/test-folder
cd examples || exit

echo "📄 Creating a sample file..."
touch sample.txt
echo "This is a sample text file." > sample.txt

echo "📑 Displaying contents of sample.txt:"
cat sample.txt

echo "📄 Copying sample.txt to copy.txt"
cp sample.txt copy.txt

echo "📁 Moving copy.txt into test-folder/"
mv copy.txt test-folder/

echo "📄 Viewing files in current directory:"
ls -l

echo "🗑️ Cleaning up..."
rm -r test-folder
rm sample.txt

echo "✅ Done with Day 2 script!"
