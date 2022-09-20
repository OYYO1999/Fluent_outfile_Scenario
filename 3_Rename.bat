@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
COLOR 0A



SET /P suffix="Please enter .suffix: "
)
ECHO.
SET /p prefix="Please enter filename you want: "
ECHO.
ECHO =================================
ECHO Fixing...
ECHO =================================
ECHO.
SET /a index=0
FOR %%i in (*.!suffix!) do (
    SET /a index=!index!+1
    SET name=!prefix!!index!.!suffix!
    REN "%%i" !name!
)
ECHO.
PAUSE