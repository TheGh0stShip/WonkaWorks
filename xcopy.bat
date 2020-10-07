@Echo Off
Echo Simplistic Approach to Data Aqcuisition
Echo.
echo.
echo.
echo Hello %USER%
PAUSE
cls

::Start menu for OS selection

cls

Echo Please make your OS Selection
Echo.
echo.
Echo 1. Windows XP (xCopy)
Echo 


set choice=
set /p choice= Enter Source Drive Letter
if '%choice%'=='a' goto dska
if '%choice%'=='b' goto dskb
if '%choice%'=='d' goto dskd
if '%choice%'=='e' goto dske

:dska
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='b' do diskcopy a: b: /v
if '%choice%'=='d' do diskcopy a: d: /v
if '%choice%'=='e' do diskcopy a: e: /v

:dskb
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='a' do diskcopy b: a: /v
if '%choice%'=='d' do diskcopy b: d: /v
if '%choice%'=='e' do diskcopy b: e: /v

:dskd
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='a' do diskcopy d: a: /v
if '%choice%'=='b' do diskcopy d: b: /v
if '%choice%'=='e' do diskcopy d: e: /v

:dske
set choice=
set /p choice= Enter Destination Drive Letter
if '%choice%'=='a' do diskcopy e: a: /v
if '%choice%'=='b' do diskcopy e: b: /v
if '%choice%'=='d' do diskcopy e: d: /v