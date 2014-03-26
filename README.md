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
PASS=rasmysql
BACKUP_DIR=/home/edu/xxxxx/Backups/Backups_MYSQL




