#!/bin/bash
# Setup script for 2025-Finance-Quant-Camp
# This script helps you set up your development environment

echo "=================================="
echo "2025 Finance Quant Camp Setup"
echo "=================================="
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✓ Python3 found: $(python3 --version)"
echo ""

# Create virtual environment
echo "📦 Creating virtual environment..."
if [ -d "venv" ]; then
    echo "⚠️  Virtual environment already exists. Skipping creation."
else
    python3 -m venv venv
    echo "✓ Virtual environment created"
fi
echo ""

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate
echo "✓ Virtual environment activated"
echo ""

# Upgrade pip
echo "⬆️  Upgrading pip..."
pip install --upgrade pip -q
echo "✓ pip upgraded"
echo ""

# Install requirements
echo "📥 Installing dependencies..."
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt -q
    echo "✓ Dependencies installed"
else
    echo "⚠️  requirements.txt not found"
fi
echo ""

# Optional: Install nbstripout for clean notebook commits
read -p "📝 Do you want to install nbstripout for cleaner git commits? (y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
    pip install nbstripout -q
    nbstripout --install --attributes .gitattributes
    echo "✓ nbstripout configured"
fi
echo ""

echo "=================================="
echo "✅ Setup Complete!"
echo "=================================="
echo ""
echo "To get started:"
echo "  1. Activate virtual environment: source venv/bin/activate"
echo "  2. Launch Jupyter: jupyter notebook"
echo "  3. Start working on your projects!"
echo ""
echo "For more information, see README.md and CONTRIBUTING.md"
echo ""
