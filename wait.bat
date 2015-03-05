@echo off

if "%&room%" == "clearing" if not "%&stoned%" == "YES" goto wait-clearing
echo Time passes...
goto exit

:wait-clearing
echo A new day dawns. The trolls seem rather surprised, and rigid with fear.
set &stoned=YES

:exit
