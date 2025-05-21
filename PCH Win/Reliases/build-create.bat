@echo off
"C:\Program Files (x86)\Inno Setup 6\ISCC.exe" /Q /O+ "pch-setup.iss"
if %errorlevel% neq 0 (
  echo Error.
  exit /b %errorlevel%
)
echo Build complete.
powershell "[console]::beep(400,400)"
pause
exit