@echo off

echo %*|>nul findstr /rx \-.*
if ERRORLEVEL 1 (
  "%~dp0\jc.bat" "%cd%" %*
) else (
  autojump %*
)
