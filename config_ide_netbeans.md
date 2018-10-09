## Netbeans

Configuración para PSR: `https://github.com/allebb/netbeans-psr-formatting`

## X-Debug

Instalación

    sudo apt-get update
    sudo apt-get install php-xdebug

Comprobar que está instalado con `php -m`.

     sudo nano /etc/php/7.2/mods-available/xdebug.ini
     
Agregamos al archivo lo siguiente

    zend_extension=xdebug.so
    xdebug.show_error_trace=1
    xdebug.remote_enable=1
    xdebug.remote_host=192.168.14.105   # IP interna del host (windows) donde estara el netbeans
    xdebug.remote_connect_back=0    # Not safe for production servers
    xdebug.remote_port=9000
    xdebug.remote_handler=dbgp
    xdebug.remote_mode=req
    xdebug.remote_autostart=true
    xdebug.remote_log=/var/log/xdebug.log   # Ruta del server donde estará los logs.
    xdebug.default_enable=1
    xdebug.overload_var_dump=0
    xdebug.show_local_vars=1
    xdebug.show_exception_trace=1
    xdebug.idekey='xdebug'  # Es como un ID que en principio puede tener cualquier cadena.
    
Reiniciamos el servidor `sudo service apache2 restart`.

En Netbeans añadimos el debugger, ponemso su puerto y hacemos Path mapping, mapeando el httpdocs del proyecto del host al server.

