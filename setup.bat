@echo off
REM Setup script for 2025-Finance-Quant-Camp (Windows)
REM This script helps you set up your development environment

echo ==================================
echo 2025 Finance Quant Camp Setup
echo ==================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo X Python is not installed. Please install Python 3.8 or higher.
    pause
    exit /b 1
)

for /f "tokens=*" %%i in ('python --version') do set PYTHON_VERSION=%%i
echo √ Python found: %PYTHON_VERSION%
echo.

REM Create virtual environment
echo Creating virtual environment...
if exist "venv\" (
    echo ! Virtual environment already exists. Skipping creation.
) else (
    python -m venv venv
    echo √ Virtual environment created
)
echo.

REM Activate virtual environment
echo Activating virtual environment...
call venv\Scripts\activate.bat
echo √ Virtual environment activated
echo.

REM Upgrade pip
echo Upgrading pip...
python -m pip install --upgrade pip --quiet
echo √ pip upgraded
echo.

REM Install requirements
echo Installing dependencies...
if exist "requirements.txt" (
    pip install -r requirements.txt --quiet
    echo √ Dependencies installed
) else (
    echo ! requirements.txt not found
)
echo.

REM Optional: Install nbstripout
set /p INSTALL_NBSTRIPOUT="Do you want to install nbstripout for cleaner git commits? (y/n): "
if /i "%INSTALL_NBSTRIPOUT%"=="y" (
    pip install nbstripout --quiet
    nbstripout --install --attributes .gitattributes
    echo √ nbstripout configured
)
echo.

echo ==================================
echo Setup Complete!
echo ==================================
echo.
echo To get started:
echo   1. Activate virtual environment: venv\Scripts\activate
echo   2. Launch Jupyter: jupyter notebook
echo   3. Start working on your projects!
echo.
echo For more information, see README.md and CONTRIBUTING.md
echo.
pause
