# How to Upload Files Simultaneously

This guide explains how to upload multiple files at once to the Project folder in this repository.

## Method 1: GitHub Web Interface (Drag and Drop)

The easiest way to upload multiple files simultaneously:

1. Navigate to the Project folder on GitHub
2. Click the **Add file** button
3. Select **Upload files**
4. **Drag and drop multiple files** into the upload area, or click "choose your files" to select multiple files
5. Add a commit message describing your upload
6. Click **Commit changes**

**Tip:** You can select multiple files in your file browser by holding `Ctrl` (Windows/Linux) or `Cmd` (Mac) while clicking files.

## Method 2: Git Command Line

For uploading multiple files using Git:

```bash
# Navigate to your local repository
cd /path/to/2025-Finance-Quant-Camp

# Navigate to the Project folder
cd "Quant Finance/Project"

# Copy your files to this directory
# Then add all files at once
git add .

# Or add specific files
git add file1.ipynb file2.ipynb file3.py

# Commit your changes
git commit -m "Add project files"

# Push to GitHub
git push origin main
```

## Method 3: GitHub Desktop

If you're using GitHub Desktop:

1. Open GitHub Desktop and select this repository
2. Copy your files to the `Quant Finance/Project` folder on your computer
3. GitHub Desktop will automatically detect all new files
4. Check the boxes next to all files you want to upload
5. Add a commit message
6. Click **Commit to main**
7. Click **Push origin** to upload all files simultaneously

## Method 4: Using Git Add with Patterns

To add multiple files matching a pattern:

```bash
# Add all Jupyter notebooks
git add *.ipynb

# Add all Python files
git add *.py

# Add all files in a subdirectory
git add "Mini Project 1/"*

# Add all files recursively
git add .
```

## Tips for Large Uploads

- **File Size Limit:** GitHub has a file size limit of 100 MB per file
- **Multiple Files:** You can upload as many files as you want simultaneously
- **Folder Structure:** You can also drag and drop entire folders
- **Git LFS:** For files larger than 100 MB, consider using Git Large File Storage (LFS)

## Best Practices

1. **Organize files:** Keep related files in subdirectories (e.g., `Mini Project 1/`, `Mini Project 2/`)
2. **Use descriptive names:** Name your files clearly (e.g., `Mini_Project_1.ipynb`)
3. **Commit related files together:** Upload files that belong to the same project in a single commit
4. **Write clear commit messages:** Describe what files you're adding and why

## Common Issues

- **Files not showing up:** Make sure you pushed your changes with `git push`
- **Permission denied:** Ensure you have write access to the repository
- **Merge conflicts:** Pull the latest changes with `git pull` before pushing

## Need Help?

If you encounter any issues, please open an issue in the repository or contact the course instructors.
