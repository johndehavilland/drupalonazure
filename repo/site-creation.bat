echo "starting"

mkdir "D:\home\drush"
curl -L -O "https://github.com/drush-ops/drush/releases/download/7.0.0/windows-7.0.0.zip"
unzip -o windows-7.0.0.zip -d "D:\Home\drush"

call D:\home\drush\windrush\drush.bat make drupal.makefile build
cd build
xcopy * D:\home\site\wwwroot\ /s /e	/y
xcopy ..\settings.php D:\home\site\wwwroot\sites\default\ /s /e /y
xcopy D:\home\site\wwwroot\sites\all\modules\contrib\sqlsrv\sqlsrv D:\home\site\wwwroot\includes\database\sqlsrv\ /s /e /y
xcopy ..\drush.bat D:\home\drush\windrush\ /s /e /y
cd D:\home\site\wwwroot
D:\home\drush\windrush\drush.bat -y si standard --account-name=admin --account-mail=name@test.com --account-pass=Password1234 --site-mail="admin@company.com" --site-name="Site Name" install_configure_form.site_default_country=US install_configure_form.date_default_timezone="America/New_York"
