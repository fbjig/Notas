## Netbeans

Configuración para PSR: `https://github.com/allebb/netbeans-psr-formatting`

## X-Debug

Instalación

    sudo apt-get update
    sudo apt-get install php-xdebug

Comprobar que está instalado con `php -m`.

     sudo nano /etc/php/7.0/mods-available/xdebug.ini
     
Agregamos al archivo lo siguiente

    xdebug.show_error_trace = 1
    xdebug.default_enable=1
    xdebug.remote_enable=1
    xdebug.remote_handler=dbgp
    xdebug.remote_host=localhost
    xdebug.remote_port=9000
    xdebug.remote_autostart=1
    
Reiniciamos el servidor `sudo service apache2 restart`.

