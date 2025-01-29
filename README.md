# Python-Installer
A PowerShell script that automates the installation of Python and a list of customizable Python libraries.

# Features
-	Will download and install latest version of Python
-	Automatically adds Python to system PATH
-	Upgrades 'pip' to latest version
-	Installs list of predefined Python libraries
  
# Python Libraries (12)
-	beautifulsoup4: used for web scraping and extracting data
-	opencv-python: computer vision, machine learning, and image processing
-	pandas: data manipulation and analysis
-	pygame: creating video games
-	pytorch: used for machine learning and artificial intelligence
-	matplotlib: visualization plotting of 2D and 3D graphs, histograms, and charts
-	numpy: providing support for arrays, matrices, and high-performance mathematical operations
-	seaborn: statistical data visualization
-	scikit-learn: machine learning library for classification, regression, clustering, and model evaluation
-	scipy: scientific computing or optimization, integration, interpolation, and statistical analysis
-	tensorflow: used for building and training deep learning models
-	jupyter: web-based interactive development environment for notebooks, code, and data.

These libraries can be changed based on the user’s needs. Just add or delete the libraries you need in the script.

# How to use
-	1.) First download the script and open it in IDE or Notepad. In the '$libraries' section of it, add or delete any Python library you need.
-	2.) If you changed any in '$libraries', save script. Make sure it has a .ps1 file.
-	3.) Open PowerShell and navigate to the script's location. ex: 'cd "C:\path\to\script"
-	4.) Execute script with '.\python_installer.ps1'
  
# Just in case
Sometimes PowerShell blocks scripts from running due to security reasons. If this happens, run this:

'Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned'

Then type 'Y' to confirm
