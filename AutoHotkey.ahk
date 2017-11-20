;;#NoTrayIcon ;hides the tray icon
#UseHook ;starts the hook process
^PgUp:: ;register Ctrl+PgUp
send {PgUp} ;sends the PgUp '
return
^PgDn:: ;;register Ctrl+PgDn
send {PgDn} ;sends the PgDdown-key
return
PgUp:: ;disables the PgUp key
return
PgDn:: ;disables the PgDn key
return

#`::	; Next Window
WinGetClass, CurrentActive, A
WinGet, Instances, Count, ahk_class %CurrentActive%
If Instances > 1
	WinSet, Bottom,, A
WinActivate, ahk_class %CurrentActive%
return

#~::	; Previous Window
WinGetClass, CurrentActive, A
WinGet, Instances, Count, ahk_class %CurrentActive%
If Instances > 1
	WinActivateBottom, ahk_class %CurrentActive%
return