@echo off 
echo ====== Building greeter ====== 
echo [1/2] Installing package in editable mode... 
pip install -e . 
echo [2/2] Running tests with coverage... 
pytest --cov=greeter --cov-report=term-missing 
if errorlevel 1 exit /b 1 
echo Build SUCCESS! 
