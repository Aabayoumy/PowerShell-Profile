# PowerShell-Profile
PowerShell-Profile using chezmoi

```powershel
(irm -useb https://get.chezmoi.io/ps1) | powershell -c -
$env:userprofile\bin\chezmoi.exe  -- init --apply  https://github.com/Aabayoumy/PowerShell-Profile.git
$env:userprofile\.local\share\chezmoi\Scripts\install.ps1
$env:userprofile\bin\chezmoi.exe apply
```
