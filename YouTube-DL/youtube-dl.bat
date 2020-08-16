@echo off
mode con lines=29999 cols=100
title ^|YouTube DL :  %option%^|  ^|%choice%^|
call batbox.exe /h 0
echo [40;90m
echo        ##############################################
echo        #       [40;91m[40;90m   [40;36mWelcome in YouTube DL   [40;91m[40;90m        #
echo        ##############################################
echo:
if "%language%"=="FR" echo         [40;36mChoix : %option%[40;90m
if "%language%"=="EN" echo         [40;36mChoice : %option%[40;90m
if "%language%"=="FR" echo         [40;36mVeuillez patienter pendant le t‚l‚chargement . . .[40;90m
if "%language%"=="EN" echo         [40;36mPlease wait while the downloading . . .[40;90m
echo:
echo ====================================================================================================
echo [40;31m
call "Portable_Apps\YouTube-DL\youtube-dl.exe" --config-location "Portable_Apps\YouTube-DL" --ffmpeg-location "Portable_Apps\YouTube-DL" %argument0% %argument1% %argument2% %argument3% %argument4% %argument5% "%choice%"
echo [40;90m
echo ====================================================================================================
echo [40;36m
if "%language%"=="FR" echo         T‚l‚chargement terminer.
if "%language%"=="EN" echo         Download finished.
if "%language%"=="FR" echo         Appuyez sur une touche pour ouvrir l'emplacement de t‚l‚chargement.
if "%language%"=="EN" echo         Press any key to open download location.
pause >nul
if defined output if exist %output% (
    start "" "explorer.exe" "%output%"
)
exit