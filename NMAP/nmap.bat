@echo off
if not defined %choice% exit
title ^|NMAP :  %choice%^|    ^|%option1%^|    ^|%option2%^|
mode con lines=29999 cols=87
call "batool.exe" h 1
net start npcap >nul 2>&1
for /f "tokens=3" %%a in ('call "reg.exe" query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" ^|findstr /ri "REG_DWORD"') do set "MaxUserPort=%%a"
if not "%MaxUserPort%"=="0xfc16" call "reg.exe" add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d 64534 /f >nul && set MaxUserPort=
for /f "tokens=3" %%a in ('call "reg.exe" query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "StrictTimeWaitSeqCheck" ^|findstr /ri "REG_DWORD"') do set "StrictTimeWaitSeqCheck=%%a"
if not "%StrictTimeWaitSeqCheck%"=="0x1" call "reg.exe" add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "StrictTimeWaitSeqCheck" /t REG_DWORD /d 1 /f >nul && set StrictTimeWaitSeqCheck=
for /f "tokens=3" %%a in ('call "reg.exe" query "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" ^|findstr /ri "REG_DWORD"') do set "TcpTimedWaitDelay=%%a"
if not "%TcpTimedWaitDelay%"=="0x1e" call "reg.exe" add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /t REG_DWORD /d 30 /f >nul && set TcpTimedWaitDelay=
echo [40;90m
echo        #################################################################
if "%language%"=="FR" echo        #    [40;91m[40;90m   [40;36mBienvenue dans le meilleur Port Scanner par NMAP   [40;91m[40;90m   #
if "%language%"=="EN" echo        #       [40;91m[40;90m   [40;36mWelcome in the best Port Scanner by NMAP   [40;91m[40;90m        #
echo        #################################################################
echo:
if "%language%"=="FR" echo         [40;36mScan  : %option1%[40;90m
if "%language%"=="EN" echo         [40;36mScan : %option1%[40;90m
if "%language%"=="FR" echo         [40;36mTemps : %option2%[40;90m
if "%language%"=="EN" echo         [40;36mTime : %option2%[40;90m
if "%language%"=="FR" echo         [40;36mVeuillez patienter pendant le scan de %choice% . . .[40;90m
if "%language%"=="EN" echo         [40;36mPlease wait while scanning %choice% . . .[40;90m
echo:
echo =======================================================================================
echo [40;31m
call "Portable_Apps\NMAP\nmap.exe" -T5 --open %prefix%%argument1%%middle%%argument2% %choice%
echo [40;90m
echo =======================================================================================
echo [40;36m
if "%language%"=="FR" echo         Scan terminer.
if "%language%"=="EN" echo         Scan finished.
if "%language%"=="FR" echo         Appuyez sur une touche pour quitter.
if "%language%"=="EN" echo         Press any key to exit.
pause >nul 2>&1
exit