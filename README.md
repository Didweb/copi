Copia de seguridad: copi.sh
===========================

Es un pequeño código que utilizo para hacer mis copias de seguridad.

Esta pensado para copias de seguridad en un segundo disco instalado en mi propio PC

Funcionalidades
------------------

Copia las carpetas que queiras y tambien realiza una copia de tus base de datos MySQL.

Realiza un log con la fecha de las carpetas copiadas y así como de las base de datos.

Configurar
-------------

Al principio del código se ven unas varibales donde puedes configurar las rutas del destino de las copias así como de donde queires almacenar los logs

	RutaLogsCarpetas = /home/edu/xxxxx/Backups/logs_backups/Control_de_copias_CARPETAS
	RutaLogsBBDD = /home/edu/xxxxx/Backups/logs_backups/Control_de_copias
	HOST=localhost
	USER=root
	PASS=123456
	BACKUP_DIR=/home/edu/xxxxx/Backups/Backups_MYSQL
	RUTA_DISCO_BACKUP = /media/88e2bfa8-bbc9-46d8-a34a-710eba5aa511/Seguridad_2014


`RutaLogsCarpetas` Es la ruta donde guardara el log de la copia de las carpetas.

`RutaLogsBBD` Es la ruta para los logs de la copia de BBDD.

`HOST` El host d etu base de datos (MySQL)

`USER` El usuario para el acceso ala base de datos. (Cambia esto con los valores de tu user)

`PASS` El password de acceso a la BBDD. (Pon el que corresponda)

`BACKUP_DIR` La ruta donde se almacenarán las copias de tus BBDD.

`RUTA_DISCO_BACKUP` Ruta de destino de la copia de tus archivos.



### Define carpetas a copiar

Aquí puedes definir las rutas de las carpetas que tu quieras copiar.

	#----->>> Copia de archivos
	# Define las carpetas que deseas copiar
	cp -ruv  /home/edu/ $RUTA_DISCO_BACKUP
	cp -ruv  /var/www/ $RUTA_DISCO_BACKUP

Donde pone en este caso `/home/edu` y `/var/www/` deberas poner las carpetas que queiras copiar. En este caso son dos. 


### Ejecutar

Descarga el código donde quieras y simplemente accede a él desde tu consola.

