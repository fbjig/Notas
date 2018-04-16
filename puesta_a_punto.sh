201803142003	root	Fk2T3O2196

# creacion de usuario con permisos de sudo
sudo adduser d3lorean
sudo adduser d3lorean sudo

# instalar nano
sudo apt-get install nano

# que no pregunte por la password al hacer sudo
sudo nano /etc/sudoers
d3lorean ALL=(ALL) NOPASSWD: ALL	#append al final del archivo

# instalacion de apache
sudo apt-get install apache2

	# ajustar el firewall
	sudo apt-get install ufw
	sudo ufw app list #lista las aplicaciones. Apache Full seria puerto 80 y 443. Los otros 80 y 443.
	sudo ufw allow 'Apache Full'
	sudo ufw enable # lo inicia
	
#instalar php 7 (despues purgar e instalar el 7.2 no-oficial)
	
#instalacion php7.2 que no está para descargar oficialmente
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php7.2-cli
sudo apt-get install php-pear php7.2-curl php7.2-dev php7.2-gd php7.2-mbstring php7.2-zip php7.2-mysql php7.2-xml #extensiones

#reiniciar apache
sudo systemctl restart apache2

#instalar bash autocompletado
sudo apt-get install bash-completion

# INSTALAR FTP
sudo apt-get install vsftpdcom
cat /etc/vsftpd.conf | grep -v "^#" # saca todas las lineas que no sean comentarios
sudo useradd -d /home/acceso_ftp -m -s /bin/bash acceso_ftp #crea usuario ftp
sudo passwd acceso_ftp # para poner contraseña
sudo usermod --home /var/www/ acceso_ftp # cambiamos su home al var/www
sudo mv /etc/vsftpd.conf /etc/vsftpd.conf.backup # backup de config
sudo su # para hacer el siguiente comando
cat /etc/vsftpd.conf.backup | grep -v "^#" > /etc/vsftpd.conf # crea una copia limpia. Hacerlo como sudo su.
	
	#Hacer nano del archivo nuevo y pegar las siguientes 3 lineas
	chroot_local_user=YES
	chroot_list_enable=YES
	chroot_list_file=/etc/vsftpd.chroot_list
	write_enable=YES
	local_root=/var/www

	
nano /etc/vsftpd.chroot_list # ponemos el nombre del usuario con el que accedemos a ftp.
service vsftpd restart
#quedaria limitar que este usuario no pueda acceder a la carpeta que quiera.

#INSTALAR LARAVEL
sudo apt-get install composer
composer global require "laravel/installer"
sudo apt-get install php-zip # si salta que necesita dependencias

	#si laravel no existe.
	nano ~/.bash_profile
	#pegar lo siguiente.
	export PATH=~/.composer/vendor/bin:$PATH
	export PATH=~/.config/composer/vendor/bin:$PATH
	#reiniciar terminal
