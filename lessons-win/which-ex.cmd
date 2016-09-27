@echo off

setlocal
set RESULT_FOUND=0
set RESULT_NOT_FOUND=1
set RESULT_WRONG_USAGE=2

if [%1] == [] (
	echo USAGE: %~n0 COMMAND
	echo Write the full path of COMMAND to standard output.
	exit /b %RESULT_WRONG_USAGE%
)

for %%P in (".";"%PATH:;=";"%") do (
	for %%E in (;%PATHEXT%) do (
		if exist %%~P\%1%%E (
			echo %%~P\%1%%E
			exit /b %RESULT_FOUND%
		)
	)
)
exit /b %RESULT_NOT_FOUND%
