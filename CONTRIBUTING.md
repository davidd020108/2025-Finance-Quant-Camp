# Contributing Guide

## File Management and Upgrade Workflow

This guide helps you manage your work and keep files upgradable in this repository.

## 🔄 Workflow for Making Changes

### 1. Before Starting Work

```bash
# Ensure you're on the latest version
git checkout main
git pull origin main

# Create a new branch for your work
git checkout -b work/your-topic-name
```

### 2. Making Changes to Notebooks

When working on Jupyter notebooks:

1. **Open Jupyter** in your virtual environment:
   ```bash
   # Activate virtual environment first
   source venv/bin/activate  # On macOS/Linux
   # or
   venv\Scripts\activate     # On Windows
   
   # Then start Jupyter
   jupyter notebook
   ```

2. **Make your changes** in the notebook

3. **Save frequently** (Ctrl+S or Cmd+S)

### 3. Committing Your Changes

```bash
# Check what files have changed
git status

# Add your changes
git add "Quant Finance/Project/Vscode/Mini_Project_1 .ipynb"

# Or add all changes (be careful with this)
git add .

# Commit with a descriptive message
git commit -m "Add solution to Mini Project 1, Question 3"

# Push to your branch
git push origin work/your-topic-name
```

### 4. Keeping Your Work Upgradable

#### Option A: Regular Commits (Recommended for beginners)
- Commit after completing each logical unit of work
- Use clear commit messages
- Push regularly to avoid losing work

```bash
git add .
git commit -m "Complete Asian option pricing analysis"
git push
```

#### Option B: Using Branches for Experiments
- Create separate branches for different approaches
- Merge successful experiments back to main

```bash
# Create experimental branch
git checkout -b experiment/alternative-monte-carlo

# If experiment works, merge it
git checkout main
git merge experiment/alternative-monte-carlo

# If experiment doesn't work, just switch back
git checkout main
git branch -D experiment/alternative-monte-carlo
```

## 📋 Best Practices for Notebook Management

### 1. Clean Outputs Before Committing (Advanced)

Large notebook outputs can bloat the repository. To automatically clean them:

```bash
# Install nbstripout (already in requirements.txt)
pip install nbstripout

# Configure it for this repository
nbstripout --install --attributes .gitattributes
```

This creates a `.gitattributes` file that automatically cleans notebook outputs on commit.

### 2. Organize Your Files

Keep your work organized:
- Use the existing folder structure
- Put project work in `Quant Finance/Project/`
- Keep notes in `Quant Finance/Classnotes/`
- Put homework in `Quant Finance/HW/`

### 3. Document Your Changes

Add comments in your code:
```python
# Calculate option price using Black-Scholes
# Parameters: S0=100, K=100, r=0.05, sigma=0.2, T=1
option_price = black_scholes(S0, K, r, sigma, T)
```

## 🔀 Syncing with Upstream Updates

If the original repository gets updated:

```bash
# Pull latest changes
git checkout main
git pull origin main

# Update your working branch
git checkout work/your-topic-name
git merge main

# Resolve any conflicts if they occur
# Then push the updated branch
git push
```

## 🐛 Handling Merge Conflicts

If you get merge conflicts:

1. **Don't panic!** Git will mark the conflicting sections
2. **Open the conflicted file** - look for `<<<<<<<`, `=======`, `>>>>>>>`
3. **Choose which version to keep** or combine both
4. **Remove the conflict markers**
5. **Commit the resolution**:
   ```bash
   git add conflicted-file.ipynb
   git commit -m "Resolve merge conflict in notebook"
   git push
   ```

## 📊 Tracking Your Progress

### Check Your Status
```bash
# See what's changed
git status

# See detailed changes
git diff

# See commit history
git log --oneline
```

### Create Checkpoints
```bash
# Tag important milestones
git tag -a v1.0-homework2 -m "Completed Homework 2"
git push --tags
```

## 🔐 What NOT to Commit

The `.gitignore` file already excludes:
- `.ipynb_checkpoints/` - Temporary Jupyter files
- `__pycache__/` - Python cache
- `.venv/` or `venv/` - Virtual environment
- Large data files (`.csv`, `.xlsx`)

If you need to track specific data files, remove them from `.gitignore`.

## 🆘 Common Issues

### "Changes not showing up"
```bash
# Make sure you've added and committed
git add .
git commit -m "Your message"
git push
```

### "Can't push - rejected"
```bash
# Pull first, then push
git pull origin your-branch-name
git push origin your-branch-name
```

### "Lost my changes!"
```bash
# Check stash
git stash list

# Recover from stash
git stash pop

# Or check reflog for recent commits
git reflog
```

## 📚 Additional Resources

- [Git Basics](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics)
- [Jupyter Notebook Documentation](https://jupyter-notebook.readthedocs.io/)
- [Python Virtual Environments](https://docs.python.org/3/tutorial/venv.html)

## 💡 Tips for Success

1. **Commit often** - Small, frequent commits are better than large ones
2. **Use descriptive messages** - "Fix bug" is less helpful than "Fix calculation error in option pricing formula"
3. **Test before committing** - Run all cells to ensure code works
4. **Keep backups** - Push to GitHub regularly
5. **Ask for help** - Open an issue if you're stuck!

---

Remember: The goal is to make your work **reproducible**, **trackable**, and **upgradable**!
