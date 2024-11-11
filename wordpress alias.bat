        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/wordpress

        Alias /wordpress /var/www/html/wordpress

        <Directory /var/www/html/wordpress>
          Options Indexes FollowSymLinks
          AllowOverride None
          Require all granted
        </Directory>
		
		
#ga naar sudo nano /etc/apache2/sites-available/000-default.conf na virtual host 80 plakken
sudo systemctl restart apache2


als de site heel sloom is 

define('WP_HOME', 'http://new-ip-address');
define('WP_SITEURL', 'http://new-ip-address');
helemaal onder in je wp-config.php moet je dit zetten

en ik mariaDB moet je de volgende commando's doen

UPDATE wp_options SET option_value = 'http://new-ip-address' WHERE option_name = 'siteurl';
UPDATE wp_options SET option_value = 'http://new-ip-address' WHERE option_name = 'home';