powershell -NoProfile  -ExecutionPolicy ByPass -Command "Uninstall-Module PowerShellGet"
powershell -NoProfile  -ExecutionPolicy ByPass -Command "Install-Module -Name PowerShellGet -Force -AllowClobber -RequiredVersion 2.2.5"
powershell -NoProfile  -ExecutionPolicy ByPass -Command "Install-Module -Name PSReadLine -Force "
start /wait Powershell.exe -executionpolicy bypass -File  "%userProfile%\Scripts\start.ps1"
