@echo off

@echo	#	#	#	#	#
@echo	PROFILES:
@echo	- nodejs
@echo	- python3
@echo	- quarkus
@echo	- spring
@echo	- web
set /p profile="Enter a name Profile: "

mkdir code_profiles\%profile%\data
mkdir code_profiles\%profile%\exts
cd code_profiles
cd %profile%
install.bat
cd ..\..
code-%profile%.bat

pause