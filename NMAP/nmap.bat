@echo off
net start npcap
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v MaxUserPort /t REG_DWORD /d 64534 /f
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v StrictTimeWaitSeqCheck /t REG_DWORD /d 1 /f
cls
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v TcpTimedWaitDelay /t REG_DWORD /d 30 /f
cls
mode con lines=29999 cols=87
title ^|NMAP :  %choice%^|    ^|%option1%^|    ^|%option2%^|
call batbox.exe /h 0
echo [40;90m
echo        #################################################################
echo        #       [40;91m[40;90m   [40;36mWelcome in the best Port Scanner by NMAP   [40;91m[40;90m        #
echo        #################################################################
echo:
echo         [40;36m%option1%[40;90m
echo         [40;36m%option2%[40;90m
echo         [40;36mThat's all, now just relax and whait . . .[40;90m
echo:
echo =======================================================================================
echo [40;31m
call "Portable_Apps\NMAP\nmap.exe" -T5 %prefix%%argument1%%middle%%argument2% %choice%
echo [40;90m
echo =======================================================================================
echo [40;36m
echo Press any key to exit . . .
pause >nul
exit