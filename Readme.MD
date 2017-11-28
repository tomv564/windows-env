# Windows dev-env

### Philosophy

Avoid terminal emulators and cygwin, use
* Linux subsystem for linux apps
* Windows command prompt for everything else

### Clink

Install patched build from https://github.com/Stanzilla/clink

Apply settings from clink folder

Install lua scripts to %LOCALAPPDATA%\clink and %LOCALAPPDATA%\clink-completions

Make sure inject is setup like:
"C:\Program Files (x86)\clink\DEV\clink.bat" inject --autorun --profile ~\clink

API docs:
https://github.com/mridgers/clink/blob/master/docs/api.md

Clink completions library (used by Cmder):
https://github.com/vladimir-kotikov/clink-completions


### Console colors

vendor microsoft's tool?

Color testing:
`type AnsiColors16.ans`

### Autojump

Python version slow, install rust version from https://github.com/xen0n/autojump-rs
`rustup run nightly cargo install autojump`
Add batch files to path

### AutoHotkey

Install from https://autohotkey.com/download/
Disables PgUp/PgDn near arrow keys on Lenovo keyboards
Win-` or Win-~ for window-of-same-class switching

### Git

Latest git for windows are getting faster (and support `git update`)
Eg. git stash is being rewritten from shell script to built-in.
See also mingit (git against busybox): https://blogs.msdn.microsoft.com/devops/2016/09/03/whats-new-in-git-for-windows-2-10/

Install Putty installer: https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html
Convert `id_rsa` to PPK with PuttyGen
Add `Pageant.exe path/to/id_rsa.ppk` to Startup (`shell:startup`)
Set GIT_SSH to `plink`
Use `putty github.com` to accept host key

## TO DO 

* Doskey aliases for common unix commands
* Set title with `title %cd%` 