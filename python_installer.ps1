# PowerShell Script to Install Python and Packages

# Download and install the latest Python
Write-Output "Downloading the latest Python installer..."
$pythonInstaller = "https://www.python.org/ftp/python/3.12.0/python-3.12.0-amd64.exe"
$installerPath = "$env:TEMP\python_installer.exe"
Invoke-WebRequest -Uri $pythonInstaller -OutFile $installerPath

# Install Python silently with PATH enabled
Write-Output "Installing Python..."
Start-Process -FilePath $installerPath -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait

# Refresh environment variables
$env:Path = [System.Environment]::GetEnvironmentVariable("Path", [System.EnvironmentVariableTarget]::Machine)

# Verify Python installation
Write-Output "Verifying Python installation..."
python --version
if ($LASTEXITCODE -ne 0) {
    Write-Error "Python installation failed."
    exit 1
}

# Install Python packages
Write-Output "Upgrading pip..."
pip install --upgrade pip

# List of Python libraries that will install
$libraries = @(
    "beautifulsoup4",
    "opencv-python",
    "pandas",
    "pygame",
    "pytorch"
    "matplotlib",
    "numpy",
    "seaborn",
    "scikit-learn",
    "scipy",
    "tensorflow",
    "jupyter"
    # Add more libraries here
)

# Installs libraries one by one
Write-Output "Installing Python packages..."
foreach ($library in $libraries) {
    Write-Output "Installing $library..."
    pip install $library
}

Write-Output "Python and packages installation complete."