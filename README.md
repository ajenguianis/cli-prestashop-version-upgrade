# cli-prestashop-version-upgrade
cli-prestashop-version-upgrade is a script that allows you to update the Prestashop version in a single step and via a bash command

Before Running:

  - git clone "https://github.com/ajenguianis/cli-prestashop-version-upgrade.git"

Run:

~~~
    bash cli-prestashop-version-upgrade\upgrade.sh admin266yf5dcp
    
    admin266yf5dcp is just a sample to be replaced with admin dir
~~~

Forcing the desired version
Copy information from the following file
https://api.prestashop.com/xml/channel.xml

In the classes/Upgrader.php file of the autoupgrade module
replace lines 213 and 214 with

//line 213 $this->link = (string) $branch->download->link;
Replace with
$this->link = 'https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.9/prestashop_1.7.8.9.zip';
//line 214 $this->md5 = (string) $branch->download->md5;
Replace with
$this->md5 = '47d5f43e64cc0e10ae91c009d2c4f7b1';


**ENJOY**
=======
