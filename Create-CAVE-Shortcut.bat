@echo off
chcp 65001 >nul
powershell -NoProfile -ExecutionPolicy Bypass -Command "$s=(New-Object -ComObject WScript.Shell).CreateShortcut([Environment]::GetFolderPath('Desktop')+'\CAVE.lnk');$s.TargetPath='%~dp0index.html';$s.IconLocation='%~dp0CAVE.ico';$s.WorkingDirectory='%~dp0';$s.Save()"
echo CAVE shortcut created on your Desktop.
pause
