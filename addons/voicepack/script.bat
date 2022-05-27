rem Voicepack Playlist Creator
@echo off
echo function VoicePackData()> Data.lua
echo:>> Data.lua
echo    local database = {};>> Data.lua
echo:>> Data.lua

setlocal ENABLEDELAYEDEXPANSION

set /a c=1

for /r %%f in (.\sounds\*) do (
	echo database[!c!]="%%~nxf";>> Data.lua
	set /a c=c+1
)

endlocal
 
echo:>> Data.lua
echo return database;>> Data.lua
echo:>> Data.lua
echo end>> Data.lua