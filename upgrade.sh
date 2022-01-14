#!/bin/bash
php ManageMaintenanceMode.php --token=b48a877f50d20963eaa2ccab09651c877f --action=enable
git clone "https://github.com/PrestaShop/autoupgrade.git" ./modules/autoupgrade
cd ./modules/autoupgrade
composer install --ignore-platform-reqs --no-interaction
cd ../..
cp ./cli-prestashop-version-upgrade/ChainedTasks.php ./modules/autoupgrade/classes/TaskRunner
cp ./cli-prestashop-version-upgrade/autoupgrade.php ./modules/autoupgrade
php bin/console prestashop:module install autoupgrade
php modules/autoupgrade/cli-upgrade.php  --dir=$1 --channel=major --action=upgradeNow
php modules/autoupgrade/cli-upgrade.php  --dir=$1 --channel=major --action=upgradeDb
php modules/autoupgrade/cli-upgrade.php  --dir=$1 --channel=major --action=upgradeModules
php bin/console prestashop:module uninstall autoupgrade
cd ./modules
rm -rf autoupgrade
cd ..
php ManageMaintenanceMode.php --token=b48a877f50d20963eaa2ccab09651c877f --action=disable
rm -rf cli-prestashop-version-upgrade
