@echo off
REM --- Task name ---
set TaskName=Remove-old-users

REM --- Batch file location ---
set ScriptPath=C:\temp\remove-users.bat

REM --- Create task ---
schtasks /create /tn "%TaskName%" /tr "\"%ScriptPath%\"" /sc onlogon /ru "SYSTEM" /rl HIGHEST /f

echo Task create done: %TaskName%

