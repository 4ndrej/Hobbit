@echo off
if "%1"=="torch" goto drop-torch
if "%1"=="lunch" goto drop-lunch
if "%1"=="map" goto drop-map
if "%1"=="sword" goto drop-sword
if "%1"=="treasure" goto drop-treasure
if "%1" == "the" drop %2
goto not-held

:drop-torch
if not "%&o1loc%"=="me" goto not-held
set &o1loc=%&room%
goto dropped

:drop-lunch
if not "%&o2loc%"=="me" goto not-held
set &o2loc=%&room%
goto dropped

:drop-map
if not "%&o3loc%"=="me" goto not-held
set &o3loc=%&room%
goto dropped

:drop-sword
if not "%&o6loc%"=="me" goto not-held
set &o6loc=%&room%
goto dropped

:drop-treasure
if not "%&o7loc%"=="me" goto not-held
set &o7loc=%&room%
goto dropped

:not-held
echo You are not holding that.
goto exit

:dropped
echo You drop the %1.

:exit
