# cli-prestashop-version-upgrade
cli-prestashop-version-upgrade est un script qui permet une mise à jour de la version de prestashop en une seule step et via une commande bash

Before Running:

  - git clone "https://github.com/ajenguianis/cli-prestashop-version-upgrade.git"

Run:

~~~
    bash cli-prestashop-version-upgrade\upgrade.sh admin266yf5dcp
    
    admin266yf5dcp is just a sample to be replaced with admin dir
~~~

Forçage de la version souhaitée 
Copier les informations à partir du fichier suivant 
https://api.prestashop.com/xml/channel.xml

Dans le fichier classes/Upgrader.php du module autoupgrade 
remplacer les lignes 213 et 214 par

//ligne 213 $this->link = (string) $branch->download->link;
Remplacer par
$this->link = 'https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.9/prestashop_1.7.8.9.zip';
//ligne 214 $this->md5 = (string) $branch->download->md5;
Remplacer par
$this->md5 = '47d5f43e64cc0e10ae91c009d2c4f7b1';


**ENJOY**
=======
