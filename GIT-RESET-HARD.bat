@echo off
echo WARNING: This will delete all local changes and reset to the last commit.
echo Are you sure you want to proceed? (Y/N)
choice /C YN /M ""

if errorlevel 2 goto :abort
if errorlevel 1 goto :reset

:reset
git reset --hard
echo Reset completed.
pause
goto :end

:abort
echo Operation cancelled.
pause

:end