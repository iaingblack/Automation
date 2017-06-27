@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco install vagrant chefdk virtualbox visualstudiocode 7zip -y
refreshenv
vagrant plugin install vagrant-winrm
chef gem install kitchen-all
vagrant box add mwrock/Windows2016
vagrant box add mwrock/Windows2012R2
vagrant box add jacqinthebox/windowsserver2016core