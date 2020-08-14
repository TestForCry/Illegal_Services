@echo off
mode con lines=29999 cols=100
title ^|YouTube DL :  %option2%^|  ^|%choice%^|
call batbox.exe /h 0
echo [40;90m
echo        ##############################################
echo        #       [40;91m[40;90m   [40;36mWelcome in YouTube DL   [40;91m[40;90m        #
echo        ##############################################
echo:
echo         [40;36m%option1%[40;90m
echo         [40;36mThat's all, now just relax and whait . . .[40;90m
echo:
echo ====================================================================================================
echo [40;31m
call "Portable_Apps\YouTube-DL\youtube-dl.exe" --config-location "Portable_Apps\YouTube-DL" --ffmpeg-location "Portable_Apps\YouTube-DL" %argument0% %argument1% %argument2% %argument3% %argument4% %argument5% "%choice%"
echo [40;90m
echo ====================================================================================================
echo [40;36m
echo Press any key to exit . . .
pause >nul
if defined output if exist %output% start %output%
exit