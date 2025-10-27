# 2025-Finance-Quant-Camp

A collection of quantitative finance projects, assignments, and class notes using Python and Jupyter notebooks.

## 📁 Repository Structure

```
Quant Finance/
├── Classnotes/     # Lecture notes and examples
├── HW/             # Homework assignments
└── Project/        # Mini projects and exercises
    ├── Mini Project 1/
    └── Vscode/     # Project notebooks
```

## 🚀 Getting Started

### Prerequisites

- Python 3.8 or higher
- pip (Python package manager)
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/davidd020108/2025-Finance-Quant-Camp.git
   cd 2025-Finance-Quant-Camp
   ```

2. **Create a virtual environment** (recommended)
   ```bash
   # On Windows
   python -m venv venv
   venv\Scripts\activate

   # On macOS/Linux
   python3 -m venv venv
   source venv/bin/activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Launch Jupyter Notebook**
   ```bash
   jupyter notebook
   ```

## 📝 Working with Notebooks

### Making Your Changes Upgradable

To ensure your work is properly tracked and can be easily upgraded:

1. **Always work in a virtual environment** to keep dependencies isolated
2. **Commit your changes regularly** with clear commit messages
3. **Use branches** for different features or experiments:
   ```bash
   git checkout -b feature/my-new-analysis
   ```

### Best Practices

1. **Before making changes:**
   ```bash
   git pull origin main  # Get latest changes
   ```

2. **After making changes:**
   ```bash
   git add .
   git commit -m "Descriptive message about your changes"
   git push origin your-branch-name
   ```

3. **Keep notebook outputs clean** (optional but recommended):
   ```bash
   # Install nbstripout (included in requirements.txt)
   nbstripout --install
   ```
   This will automatically remove notebook outputs before committing, making diffs cleaner.

## 📚 Course Topics

- Probabilistic Methods and Monte-Carlo Simulation
- Stock Data and Modeling
- Geometric Brownian Motion
- Options Pricing and Monte-Carlo Methods
- Black-Scholes Formulas
- Asian and Barrier Options

## 🔧 Troubleshooting

### Issue: Package not found
**Solution:** Make sure you've activated your virtual environment and installed requirements:
```bash
pip install -r requirements.txt
```

### Issue: Notebook kernel not found
**Solution:** Install the IPython kernel in your virtual environment:
```bash
python -m ipykernel install --user --name=venv
```

### Issue: Changes not syncing
**Solution:** 
1. Ensure you've committed your changes: `git status`
2. Push to remote: `git push origin your-branch-name`
3. Check for conflicts: `git pull origin main`

## 📦 Dependencies

Main libraries used in this project:
- **NumPy**: Numerical computing
- **Pandas**: Data analysis and manipulation
- **Matplotlib**: Data visualization
- **Seaborn**: Statistical data visualization
- **yfinance**: Fetching financial market data
- **SciPy**: Scientific computing

See `requirements.txt` for full list and version details.

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is for educational purposes as part of the 2025 Finance Quant Camp.

## 📧 Contact

For questions or issues, please open an issue in this repository.