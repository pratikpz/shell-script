@echo off
:loop
rem Display notification
powershell.exe -Command "New-BurntToastNotification -Text 'Take a Break!' -Sound 'Default'"

rem Wait for 20 minutes
timeout /t 1200 >nul

rem Display notification for the break ending
powershell.exe -Command "New-BurntToastNotification -Text 'Break Over. Time to get back to work!' -Sound 'Default'"

rem Wait for 2 minutes
timeout /t 120 >nul

rem Loop back to the beginning
goto loop
