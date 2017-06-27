@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install vagrant chefdk virtualbox visualstudiocode 7zip googlechrome notepadplusplus.install firefox -y
refreshenv
vagrant plugin install vagrant-winrm
chef gem install kitchen-all
vagrant box add mwrock/Windows2016
vagrant box add mwrock/Windows2012R2
vagrant box add jacqinthebox/windowsserver2016core
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension ms-vscode.powershell
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension msazurermtools.azurerm-vscode-tools
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension HookyQR.beautify
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension Pendrica.chef
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension ms-vscode.PeterJausovec.vscode-docker
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension alefragnani.project-manager
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension Borke.puppet
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension mauve.terraform
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --install-extension bbenoist.vagrant
"C:\Program Files (x86)\Microsoft VS Code\code.exe" --list-extensions
