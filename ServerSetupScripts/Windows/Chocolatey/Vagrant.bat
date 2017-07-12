@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install googlechrome 7zip notepadplusplus.install firefox git.install putty winscp.install tortoisegit vagrant chefdk puppet-agent packer terraform virtualbox visualstudiocode vmwareworkstation -y
refreshenv
vagrant plugin install vagrant-winrm
vagrant box add mwrock/Windows2016 --provider virtualbox
code --install-extension ms-vscode.powershell
code --install-extension msazurermtools.azurerm-vscode-tools
code --install-extension HookyQR.beautify
code --install-extension Pendrica.chef
code --install-extension ms-vscode.PeterJausovec.vscode-docker
code --install-extension alefragnani.project-manager
code --install-extension Borke.puppet
code --install-extension mauve.terraform
code --install-extension Pendrica.chef
code --install-extension bbenoist.vagrant
code --list-extensions
mkdir c:\github
cd c:\github
git clone https://github.com/iaingblack/Automation.git
chef gem install kitchen-all


vagrant box add mwrock/Windows2012R2 --provider virtualbox
vagrant box add jacqinthebox/windowsserver2016core --provider virtualbox
