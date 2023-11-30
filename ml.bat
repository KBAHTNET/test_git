@echo off
color a
setlocal EnableExtensions

set "TAB="
for /F "delims=" %%Z in (
    '^(type "%COMSPEC%"^|^(^(for /L %%P in ^(1^,1^,70^) do @pause^>nul^)^&set /p "TAB="^&call echo^,%%TAB%%^)^)2^>nul'
) do set "TAB=%%Z"
set "TAB=%TAB:~0,1%"

echo,
:start
echo %random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%%TAB%%random%
goto start
echo,
pause