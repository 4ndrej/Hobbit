@echo off
if "%1"=="torch" goto take-torch
if "%1"=="lunch" goto take-lunch
if "%1"=="map" goto take-map
if "%1"=="chest" goto take-chest
if "%1"=="raft" goto take-raft
if "%1"=="sword" goto take-sword
if "%1"=="treasure" goto take-treasure
if "%1" == "the" take %2
goto cant-take

:take-torch
if "%&o1loc%"=="me" goto already-got
if not "%&o1loc%"=="%&room%" goto cant-see
set &o1loc=me
goto taken

:take-lunch
if "%&o2loc%"=="me" goto already-got 
if not "%&o2loc%"=="%&room%" goto cant-see
set &o2loc=me
goto taken

:take-map
if "%&o3loc%"=="me" goto already-got
if not "%&o3loc%"=="%&room%" goto cant-see
set &o3loc=me
goto taken

:take-chest
if not "%&o4loc%"=="%&room%" goto cant-see
goto cant-take

:take-raft
if not "%&o5loc%"=="%&room%" goto cant-see
goto cant-take

:take-sword
if "%&o6loc%"=="me" goto already-got
if not "%&o6loc%"=="%&room%" goto cant-see
set &o6loc=me
goto taken

:take-treasure
if "%&o7loc%"=="me" goto already-got
if not "%&o7loc%"=="%&room%" goto cant-see
set &o7loc=me
goto taken

:already-got
echo You are already carrying that.
goto exit

:cant-take
echo You can't take that.
goto exit

:cant-see
echo You can't see it here.
goto exit

:taken
echo You take the %1.

:exit
