@echo off

SET SCRIPT_HOME=%~dp0
SET PHP_PATH="D:\Program Files (x86)\PHP\v5.6"
SET PATH=%SCRIPT_HOME%tools\bin;%PHP_PATH%;%PATH%

@php.exe "%SCRIPT_HOME%vendor\drush\drush\drush.php" --php="php.exe" %*