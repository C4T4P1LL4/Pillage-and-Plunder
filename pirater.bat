@echo off
cls
title Youtube Pillage and Plunderer
goto :start

:start
cls
color 04
type colors.txt
echo.
echo.
echo AVAST YE! WE BE BOUNTIN BOOTY ON THE DIGITAL SEAS AYE.
echo SIP YE CLAP O THUNDER N POINT THE CHASE GUNS FOR YE COFFER BUCKO!
echo _____________________________________
echo 1] Download VIDEO. (playlists supported).
echo 2] Download AUDIO. (playlists supported).
echo 3] Check for updates.
echo 4] exit.
echo _____________________________________
set /P option="Select option: "
if %option% == 1 goto :video
if %option% == 2 goto :audio
if %option% == 3 goto :update
if %option% == 4 exit

:video
cls
type colors.txt
echo.
echo.
echo AH YE BE THE SCOURGE OF THE 7 SEAS YE! SINK ER DOWN TO DAVY JONES N WE'LL SPLICE THE MAINBRACE!
set /p URL=Target URL:] 
echo Pirating Material...
youtube-dl -i -f mp4  %URL% -o "./BOOTY/%%(title)s.%%(ext)s"
pause
set /P c=Continue [Y] return to start [N]
if /I "%c%" EQU "Y" goto :video
if /I "%c%" EQU "N" goto :start


:audio
cls
type colors.txt
echo.
echo.
echo AH ME PRECIOUS DUBLOONS. WEIGH ANCHOR N HOIST THE MIZZEN! STRIKE THE COLORS! WE'LL SCUTTLE ER YET! >:)
set /p URL=Target URL:] 
echo Pirating Material...
youtube-dl -i --extract-audio --audio-format mp3 %URL% -o "./BOOTY/%%(title)s.%%(ext)s"
pause
goto :audio

:update
cls
type colors.txt
echo.
echo.
echo ALRIGHT WE'LL CHECK FOR YELLOW JACKS N SCURVY...
youtube-dl --update
echo SO THATS THAT 
pause
goto :start