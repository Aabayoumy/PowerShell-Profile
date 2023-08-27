$ScriptsCount = (Get-ChildItem $env:USERPROFILE\Scripts | where-object {$_.Name -match "^[0-9][0-9]"}).count
$i=0
Get-ChildItem $env:USERPROFILE\Scripts | where-object {$_.Name -match "^[0-9][0-9]"} | Sort-Object | ForEach-Object {
  $i++
  $host.UI.RawUI.WindowTitle = "$i of $ScriptsCount : $_"
  & $_.FullName
}
