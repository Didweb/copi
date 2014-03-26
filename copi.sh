#!/bin/bash
FECHA=$(date)
RutaLogsCarpetas = /home/edu/Did-Web/Backups/logs_backups/Control_de_copias_CARPETAS
RutaLogsBBDD = /home/edu/Did-Web/Backups/logs_backups/Control_de_copias
HOST=localhost
USER=root
PASS=rasmysql
BACKUP_DIR=/home/edu/Did-Web/Backups/Backups_MYSQL

RUTA_DISCO_BACKUP = /media/88e2bfa8-bbc9-46d8-a34a-710eba5aa511/Seguridad_2014

# Limpiamos los logs...
rm $RutaLogsCarpetas
rm $RutaLogsBBDD

# Backup de MySQL
MYSQL_DBS=$(mysqlshow -h $HOST -u $USER -p$PASS | awk ' (NR > 2) && (/[a-zA-Z0-9]+[ ]+[|]/) && ( $0 !~ /mysql/) { print $2 }');
 
for DB in $MYSQL_DBS ; do 
  echo "* Copiando tu MySQL data from $DB@$HOST..."
  mysqldump -h $HOST -u $USER -p$PASS $DB > $BACKUP_DIR/mysql_$DB.sql

echo "$FECHA --> $DB " >> $RutaLogsBBDD
done



# Comienzo BACKUP...
echo "---------------------------------------------------------"
echo "---------------------------------------------------------"
echo "---------------------------------------------------------"
echo "Hemos iniciado el proceso de copia de seguridad. Espera un rato."
echo "---------------------------------------------------------"
sleep 5s



if [ ! -d $BACKUP_DIR ]; then
  mkdir -p $BACKUP_DIR
fi
 


#----->>> Copia de archivos
# Define las carpetas que deseas copiar
cp -ruv  /home/edu/ $RUTA_DISCO_BACKUP
cp -ruv  /var/www/ $RUTA_DISCO_BACKUP


echo "$FECHA copiado edu y www " >> $RutaLogsCarpetas
chmod -R 777 $RutaLogsBBDD
chmod -R 777 $RutaLogsCarpetas
echo "---------------------------------------------------------"
echo "---------------------------------------------------------"
echo "---------------------------------------------------------"
echo "   FIN DE LA COPIA DE SEGURIDAD. Hasta luego Lucas!       "
echo "---------------------------------------------------------"
