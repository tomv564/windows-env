::@echo off

:: set up aliases - move this to localappdata as well.
doskey /MACROFILE=%~dp0aliases.txt

:: call clink
"%CLINK_DIR%\clink.bat" inject --autorun --profile ~\clink

:: start up pageant? Feels like the user's business how they want to run git.
