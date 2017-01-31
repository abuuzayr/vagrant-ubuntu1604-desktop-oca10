cd "%HOMEPATH%\Desktop\vagrant-ubuntu1604-desktop-oca10"

IF "%STATE%" NEQ "saved" (
  ECHO Starting Vagrant VM from powered down state...
  vagrant up
) ELSE (
  ECHO Resuming Vagrant VM from saved state...
  vagrant resume
)

if errorlevel 1 (
  ECHO FAILURE! Vagrant VM unresponsive...
)
