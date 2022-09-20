@echo off
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in ('dir/b/a-d') do (
set /a cnt+=1
set fn=00!cnt!_!
ren "%%i" "!fn:~-3!%%i")
pause
