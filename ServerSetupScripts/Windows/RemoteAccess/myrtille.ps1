Function downloadFile($source, $dest) {
    $WebClient = New-Object System.Net.WebClient
    Write-Host "Downloading File from $source to $dest"
    $WebClient.DownloadFile($source,$dest)
}    

"Write-Host 'Installing IIS and  Myrtille for Web RDP Access"
Install-WindowsFeature -name Web-Server, Web-App-Dev, Web-Asp-Net45 -IncludeManagementTools
mkir C:\installers -Force
downloadFile "https://github.com/cedrozor/myrtille/releases/download/v1.4.0/Myrtille_1.4.0_x86_x64_Setup.exe" "C:\installers\Myrtille_1.4.0_x86_x64_Setup.exe"
C:\installers\Myrtille_1.4.0_x86_x64_Setup.exe -o"C:\installers\myrtille" -y
sleep 5
Start-Process "C:\installers\myrtille\setup.exe" -ArgumentList /qn" -wait