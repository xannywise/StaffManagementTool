-------------- TEST READ ME for Web App (Staff Management Tool) --------------

-------------------------- Requirements: --------------------------------

VSCode Download: https://code.visualstudio.com/download

Python 3.11: https://www.python.org/ftp/python/3.11.0/python-3.11.0-amd64.exe

 -On Windows, make sure the location of your Python interpreter is included in your PATH environment variable. You can check the location by running path at   the command prompt. If the Python interpreter's folder isn't included, open Windows Settings, search for "environment", select Edit environment variables     for your account, then edit the Path variable to include that folder

NPM: https://nodejs.org/dist/v18.12.1/node-v18.12.1-x64.msi

Github bash download: https://github.com/git-for-windows/git/releases/download/v2.38.1.windows.1/Git-2.38.1-64-bit.exe

Github account creation: https://github.com/join

Needed Extensions: 

Name: HTML CSS Support
Id: ecmel.vscode-html-css
Description: CSS Intellisense for HTML
Version: 1.13.1
Publisher: ecmel
VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css

Name: Python
Id: ms-python.python
Description: IntelliSense (Pylance), Linting, Debugging (multi-threaded, remote), Jupyter Notebooks, code formatting, refactoring, unit tests, and more.
Version: 2022.18.2
Publisher: Microsoft
VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=ms-python.python

Name: Djaneiro - Django Snippets
Id: thebarkman.vscode-djaneiro
Description: A collection of snippets for django templates, models, views, fields & forms. Ported from Djaneiro for SublimeText
Version: 1.4.2
Publisher: Scott Barkman
VS Marketplace Link: https://marketplace.visualstudio.com/items?itemName=thebarkman.vscode-djaneiro

.
.
.
.

Needed input: 
- Data structure from group 3

Output to:
- Controllgroup QR-Code group 1


------------------------- Creating a Venv: ------------------------------


1.On your file system, create a project folder for this tutorial, such as hello_django.

2.In that folder, use the following command to create a virtual environment named .venv based on your current interpreter:

     # Linux
     sudo apt-get install python3-venv    # If needed
     python3 -m venv .venv
     source .venv/bin/activate

     # macOS
     python3 -m venv .venv
     source .venv/bin/activate

     # Windows
     py -3 -m venv .venv
     .venv\scripts\activate
     
Interpreter auswählen
& "c:/Users/q506869/OneDrive - BMW Group/Dokumente/07_Programmieren/02_Python/Django/.venv/Scripts/Activate.ps1"

3.Open the project folder in VS Code by running code .

4.In VS Code, open the Command Palette (View > Command Palette or (Ctrl+Shift+P)). Then select the Python: Select Interpreter command:

5.Select the virtual environment in your project folder that starts with ./.venv or .\.venv

6.Create New Terminal (Ctrl+Shift+`)

7.Update pip: python -m pip install --upgrade pip

8.Install django: python -m pip install django

-------------------------- Using Django: --------------------------------


https://code.visualstudio.com/docs/python/tutorial-django

