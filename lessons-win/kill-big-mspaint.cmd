@echo off

:loop
taskkill /im mspaint.exe /fi "memusage gt 30000" /f
timeout 2 > nul
goto loop
