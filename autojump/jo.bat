@echo off
setlocal EnableDelayedExpansion

echo %*|>nul findstr /rx \-.*
if ERRORLEVEL 1 (
  for /f "delims=" %%i in ('autojump %*') do set new_path=%%i
  if exist !new_path!\nul (
    start "" "explorer" !new_path!
  ) else (
    echo autojump: directory %* not found
    echo try `autojump --help` for more information
  )
) else (
  autojump %*
)
