@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install googlechrome 7zip notepadplusplus.install firefox git.install putty winscp.install azurestorageexplorer tortoisegit vagrant chefdk puppet-agent packer terraform virtualbox visualstudiocode vmwareworkstation -y
refreshenv
vagrant plugin install vagrant-winrm
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-berkshelf
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
code --install-extension burtlo.inspec
code --install-extension ms-mssql.mssql
code --list-extensions

#Install Azure Powershell Cmdlets
downloadFile https://github.com/Azure/azure-powershell/releases/download/v4.2.1-July2017/azure-powershell.4.2.1.msi c:\windows\temp\ 
Start-Process c:\windows\temp\azure-powershell.4.2.1.msi -ArgumentList "/quiet /qn /norestart" -wait 

#Pull this github repo as may be useful things i refer to later
mkdir c:\github
cd c:\github
git clone https://github.com/iaingblack/Automation.git

#This breaks the above commands by changing shell (I think) so do it last
chef gem install kitchen-all

#Add if required
vagrant box add mwrock/Windows2012R2 --provider virtualbox
vagrant box add jacqinthebox/windowsserver2016core --provider virtualbox
