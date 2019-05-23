@echo off
Title SQLBackup - All Databases
REM Remember that before this will work you need to import the stored procedure into SQL

set "backupLoc=C:\SQLBackup"

if not exist %backupLoc% mkdir %backupLoc%

echo Starting Backup to %backupLoc%

sqlcmd -U SA -P PASSWORD_HERE -S .\OMSQL -Q "EXEC sp_backupAllDatabases  @backupLocation ='%backupLoc%\', @BackupType='F'"

echo.
echo Finished Backup
pause > NUL