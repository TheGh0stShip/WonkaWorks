@Echo Off
:: Initial label for redundancy
:start
cls
goto greet

:greet
@Echo Off
Echo Hello %USERNAME%
pause
goto menu

::Main Menu
:menu
@Echo Off
cls

ECHO.
ECHO ...................................................
ECHO .     PRESS 1, 2, 3 or 4 for OS, or 5 to EXIT     .
ECHO ...................................................
ECHO.
ECHO 1 - Winws XP HDD (xCopy)
ECHO 2 - Winws XP Removable Media (DiskCopy)
ECHO 3 - Winws Vista and Win 7 (RoboCopy)
ECHO 4 - Winws 8 and 8.1 (DiskShaw)
ECHO 5 - Quit
echo.
set choice=
set /p choice=Type the number to print text.
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto xp1
if '%choice%'=='2' goto xp2
if '%choice%'=='3' goto win7
if '%choice%'=='4' goto win8
if '%choice%'=='5" goto quit
ECHO "%choice%" is not valid, try again

:xp1

pause

::XP removable Media Copy Menu
:xp2
cls
echo This utility "DiskCopy" will create a bit by bit clone.
echo.
echo Caution: This will only work copy to and from removable media of same format
set choice= 
set /p choice= Start (y) or (n)?
if '%choice%'=='y' goto xp2start
if '%choice%'=='n' goto xp2return

::XP2 redirect to main menu
:xp2return
cls 
echo Returning to Main Menu
pause
goto menu


::XP Removable Media
:xp2start
echo This utility will proceed to copy, please have media inserted.
set choice=
set /p choice= Enter Source Drive Letter
if '%choice%'=='a' goto dska
if '%choice%'=='b' goto dskb
if '%choice%'=='d' goto dskd
if '%choice%'=='e' goto dske
if '%choice%'=='f' goto dskf

:dska
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='b' diskcopy a: b: /v
if '%choice%'=='d' diskcopy a: d: /v
if '%choice%'=='e' diskcopy a: e: /v
if '%choice%'=='d' diskcopy a: f: /v

:dskb
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='a' diskcopy b: a: /v
if '%choice%'=='d' diskcopy b: d: /v
if '%choice%'=='e' diskcopy b: e: /v
if '%choice%'=='f' diskcopy b: f: /v

:dskd
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='a' diskcopy d: a: /v
if '%choice%'=='b' diskcopy d: b: /v
if '%choice%'=='e' diskcopy d: e: /v
if '%choice%'=='f' diskcopy d: f: /v

:dske
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='a' diskcopy e: a: /v
if '%choice%'=='b' diskcopy e: b: /v
if '%choice%'=='d' diskcopy e: d: /v
if '%choice%'=='f' diskcopy e: f: /v

:dskf
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='a' diskcopy f: a: /v
if '%choice%'=='b' diskcopy f: b: /v
if '%choice%'=='d' diskcopy f: d: /v
if '%choice%'=='e' diskcopy f: e: /v


:win7
cls
echo This utility "RoboCopy" will mirror a root directory and all files and subfolders.
echo.
echo Security, Timestamps, and Permissions will remain untouched. (Mirror will be in root of destination i.e c:\robo)
set choice= 
set /p choice= Start (y) or (n)?  
if '%choice%'=='y' goto w7start
if '%choice%'=='n' goto w7men

::w7men redirect to main menu
:w7men
cls 
echo Returning to Main Menu
pause
goto menu


::Vista/7 Robocopy
:w7start
echo This utility will proceed to RoboCopy, ensure you select correct drive path.
echo.
set choice=
set /p choice= Enter Source Drive Letter 
if '%choice%'=='a' goto w7a
if '%choice%'=='b' goto w7b
if '%choice%'=='d' goto w7c
if '%choice%'=='e' goto w7d
if '%choice%'=='f' goto w7e
if '%choice%'=='f' goto w7f


:w7a
set choice=
set /p choice= Enter Destination Drive Letter  
if '%choice%'=='b' robocopy.exe a:\ b:\robo /mir /copyall
if '%choice%'=='c' robocopy.exe a:\ c:\robo /mir /copyall
if '%choice%'=='d' robocopy.exe a:\ d:\robo /mir /copyall
if '%choice%'=='e' robocopy.exe a:\ e:\robo /mir /copyall
if '%choice%'=='f' robocopy.exe a:\ f:\robo /mir /copyall

:w7b
set choice=
set /p choice= Enter Destination Drive Letter  
if '%choice%'=='a' robocopy.exe b:\ a:\robo /mir /copyall
if '%choice%'=='c' robocopy.exe b:\ c:\robo /mir /copyall
if '%choice%'=='d' robocopy.exe b:\ d:\robo /mir /copyall
if '%choice%'=='e' robocopy.exe b:\ e:\robo /mir /copyall
if '%choice%'=='f' robocopy.exe b:\ f:\robo /mir /copyall

:w7c
set choice=
set /p choice= Enter Destination Drive Letter  
if '%choice%'=='a' robocopy.exe c:\ a:\robo /mir /copyall
if '%choice%'=='b' robocopy.exe c:\ b:\robo /mir /copyall
if '%choice%'=='d' robocopy.exe c:\ d:\robo /mir /copyall
if '%choice%'=='e' robocopy.exe c:\ e:\robo /mir /copyall
if '%choice%'=='f' robocopy.exe c:\ f:\robo /mir /copyall

:w7d
set choice=
set /p choice= Enter Destination Drive Letter  
if '%choice%'=='a' robocopy.exe d:\ a:\robo /mir /copyall
if '%choice%'=='b' robocopy.exe d:\ b:\robo /mir /copyall
if '%choice%'=='c' robocopy.exe d:\ c:\robo /mir /copyall
if '%choice%'=='e' robocopy.exe d:\ e:\robo /mir /copyall
if '%choice%'=='f' robocopy.exe d:\ f:\robo /mir /copyall

:w7e
set choice=
set /p choice= Enter Destination Drive Letter  
if '%choice%'=='a' robocopy.exe e:\ a:\robo /mir /copyall
if '%choice%'=='b' robocopy.exe e:\ b:\robo /mir /copyall
if '%choice%'=='c' robocopy.exe e:\ c:\robo /mir /copyall
if '%choice%'=='d' robocopy.exe e:\ d:\robo /mir /copyall
if '%choice%'=='f' robocopy.exe e:\ f:\robo /mir /copyall

:w7f
set choice=
set /p choice= Enter Destination Drive Letter  
if '%choice%'=='a' robocopy.exe a:\ a:\robo /mir /copyall
if '%choice%'=='b' robocopy.exe f:\ b:\robo /mir /copyall
if '%choice%'=='c' robocopy.exe f:\ c:\robo /mir /copyall
if '%choice%'=='d' robocopy.exe f:\ d:\robo /mir /copyall
if '%choice%'=='e' robocopy.exe f:\ e:\robo /mir /copyall

::Windows 8 and 8.1 Diskshadow
:win8
cls
goto w8



:quit
pause