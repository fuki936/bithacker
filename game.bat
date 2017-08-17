@echo off
title BITHACKER Alpha v 0.1
color a
set mb=0
set cpu=1
set ram=1
set bitcoin=0
set satoshi=0
set gain=0
set cpup=4
set ramp=2
:main
cls
set /a gain=%cpu%+%ram%
echo ----------------------------
echo    BITHACKER Alpha v 0.1
echo ----------------------------
echo HACKED DATA: %mb% MB
echo CPU: %cpu% GHZ
echo RAM: %ram% MB
echo ----------------------------
echo BITCOIN: %bitcoin%.%satoshi% BTC
echo CPU PRICE: %cpup% BTC
echo RAM PRICE: %ramp% BTC
echo ----------------------------
echo POSSIBLE ACTIONS:
echo [H]ACK
echo BUY [C]PU
echo BUY [R]AM
echo [S]ELL DATA
echo ----------------------------
echo MADE BY NOVACOOP INDUSTRIES
echo H00_STR, FUKI
echo ----------------------------
set /p co=COMMAND INPUT:
if %co%==wsegewe goto E
if %co%==H goto H
if %co%==C goto C
if %co%==R goto R
if %co%==S goto S
:E
echo ERROR! UNKNOWN COMMAND!
echo PRESS ANY KEY TO CONTINUE...
pause >nul
goto main
:H
set /a mb=%mb%+%gain%
goto main
:C
if %bitcoin% LSS %cpup% goto nocpu
if %bitcoin% GEQ %cpup% goto bcpu
:nocpu
echo ERROR! NOT ENOUGH BTC!
echo PRESS ANY KEY TO CONTINUE...
pause >nul
goto main
:bcpu
set /a cpu=%cpu%+1
set /a bitcoin=%bitcoin%-%cpup%
set /a cpup=%cpup%*2
goto main
:R
if %bitcoin% LSS %ramp% goto noram
if %bitcoin% GEQ %ramp% goto bram
:noram
echo ERROR! NOT ENOUGH BTC!
echo PRESS ANY KEY TO CONTINUE...
pause >nul
goto main
:bram
set /a ram=%ram%+1
set /a bitcoin=%bitcoin%-%ramp%
set /a ramp=%ramp%*2
goto main
:S
set /a satoshi=%satoshi%+%mb%
set mb=0
if %satoshi% LSS 1000 goto main
if %satoshi% GEQ 1000 goto sum
:sum
set /a bitcoin=%bitcoin%+1
set /a satoshi=%satoshi%-1000
goto main
