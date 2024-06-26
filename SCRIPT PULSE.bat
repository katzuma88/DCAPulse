REM Crea el archivo .bat con el contenido deseado
echo net start "DCAPulse" > "C:\Program Files (x86)\ECI DCA\Pulse.bat"
REM Crea la tarea programada para ejecutar el archivo .bat diariamente
schtasks /create /sc daily /tn "Pulse" /tr "\"C:\Program Files (x86)\ECI DCA\Pulse.bat\"" /st 12:00
echo Tarea programada creada correctamente.
echo.
pause
