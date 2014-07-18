The attached script will first place your project files and the package.JSON inside a .7z file. 
The next few steps make sure all necessary directories are created. 
On the last step, nw.exe and package.7z are concatenated, as to create one package.exe. 

######Requirements: 

* An archiver (preferably 7zip but others should be possible, modifying the syntax of line 9 and replacing the $archiver variable on line 7) in your path.
* A Powershell session accepting foreign .ps1 scripts.
* A copy of Node-Webkit on the given path ($nwpath)
* A package.json inside your original project directory.
