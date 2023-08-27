# By :    ABayoumy@outlook.com
# GitHub: https://github.com/Aabayoumy/PS-Profile

Write-Host "Install Modules if not installed"
if (-not (Get-Module -Name "Terminal-Icons")) {
    Write-Host "Installing Terminal-Icons" 
    Install-Module Terminal-Icons -force }
if (-not (Get-Module -Name "z")) {
    Write-Host "Installing z" 
    Install-Module z -force }

# Install Chocolatey
if (!(Test-Path -Path "$env:ProgramData\Chocolatey")) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}
# Install Starship & fonts
$Packages = 'starship', '7zip', 'openssh' , 'git' , 'nerd-fonts-Ubuntu', 'nerd-fonts-UbuntuMono' , 'nerd-fonts-CascadiaCode' , 'nerd-fonts-FiraCode' , 'nerd-fonts-Hack' , 'nerd-fonts-JetBrainsMono'

ForEach ($PackageName in $Packages)
{
    Write-Host "Installing $($PackageName)"
    choco install $PackageName -y --limitoutput --no-progress > $null
}

Remove-Item -Path $env:TEMP\* -Recurse -Force -ErrorAction SilentlyContinue
