#! /bin/bash
rm -rf caso2.txt
# Script de validacion de los diferentes putnos

clear
echo "Este script lo puede correr cuantas veces desee, los resultados seran enviados al archivo caso2.txt, si luego de ejecutar el script encontro que le hizo falta solucionar algun punto, puede darle ctrl + c para cancelar la ejecucion y volver a ejecutarlo, una vez finalizado se le solicitara que envie adjunto caso2.txt por correo electronico"
echo 
echo "NOTA1: Este script de validacion debe ejecutarse como usuario root"
echo "NOTA2: Tenga en cuanta que este script busca los nombres exactos de los archivos solicitados"
read
echo "NOTA3: Intente NO compartir el archivo de resultado con sus compañeros, la idea es que usted pueda validar sus concimientos"
read
sleep 1
clear
echo "Actividades a realizar"
echo 
echo "1. Garantizar que el el sistema operativo se encuentre full actualizado (no debe tener actualizaciones pendientes)
2. Debe tener Red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)
3. Debe tener el servicio de SELinux activo
4. Debe tener el servicio de firewalld en ejecución y con los puertos 22 (SSH) y el servicio de firewall *samba* 
5. El servicio de SSH **NO** debe permitir conexiones del usuario root
6. Debe crear cinco (5) usuarios adicional con su respectivas contraseñas seguras asignadas: compras, comercial, ventas, administrativo, soporte
7. Todos estos usuario deben pertenecer a un grupo adicional llamado *ahino*
8. Las contraseñas de estos usuarios debe caducar cada 3 meses
9. Debe tener instalado la ultima version de los paquetes: samba y samba-client
10. Debe crear una carpeta llamada /guias que pertenezca al grupo ahino y que los usuario que pertenezcan a este grupo pudan leer, escribir, ejecutar sobre esta carpeta
11. Cree 100 archivos de texto vacios sobre la carpeta /guias con el nombre que usted desee
12. Garantice que el servicio llamado cups no se encuentre activo y que no inicie despues del reinicio de la maquina
13. Indique la version exacta del sistema operativo 
14. Cree una sub carpeta llamada /guias/config y copie en esta ubicacion los archivos /etc/redhat-release, /etc/passwd y /usr/share/dict/linux.words
15. Cree un enlace simbolico llamado /guias/config/grupos apuntando al archivo /etc/group
16. Incluya el mensaje "El problema no es problema" en el archivo /etc/motd, para que cuando un usuario haga login se muestre el MOTD (mensaje del dia)
17. Liste las particiones y los puntos de montaje de su sistema operativo y envie la salida al archivo /tmp/particiones.txt
18. Indique que sistema de archivos tiene su particion /"


echo 
echo 
echo -n "Presione enter para iniciar con la validacion de todos los puntos"
read
clear

echo  "1. El S.O Debe estar full actualizado a la fecha (no debe tener actualizaciones pendientes)"
echo "Punto 1" >> caso2.txt
yum update --assumeno >> caso2.txt
echo >> caso2.txt

echo  "2. Debe tener Red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)"
echo "Punto 2" >> caso2.txt
ip a >>  caso2.txt
echo >> caso2.txt
ip route  >>  caso2.txt
echo >> caso2.txt
cat /etc/resolv.conf >>  caso2.txt
echo >> caso2.txt

echo  "3. Debe tener el servicio de SELinux activo"
echo "Punto 3" >> caso2.txt
getenforce  >> caso2.txt
echo >> caso2.txt

echo "4. Debe tener el servicio de firewalld en ejecución y con los puertos 22 (SSH) y el servicio de firewall *samba*"
echo "Punto 4" >> caso2.txt
firewall-cmd --list-all >> caso2.txt
echo >> caso2.txt

echo "5. El servicio de SSH **NO** debe permitir hacer sessiones graficas por SSH (X11Forwarding)"
echo "Punto 5" >> caso2.txt
grep -i X11Forwarding /etc/ssh/sshd_config >> caso2.txt
echo >> caso2.txt

echo "6. Debe crear cinco (5) usuarios adicional con su respectivas contraseñas seguras asignadas: compras, comercial, ventas, administrativo, soporte"
echo "Punto 6" >> caso2.txt
id compras >> caso2.txt
id comercial >> caso2.txt
id ventas >> caso2.txt
id administrativo >> caso2.txt
id soporte >> caso2.txt
echo >> caso2.txt



echo "7. Todos estos usuario deben pertenecer a un grupo adicional llamado ahino"
echo "Punto 7" >> caso2.txt
id compras >> caso2.txt
id comercial >> caso2.txt
id ventas >> caso2.txt
id administrativo >> caso2.txt
id soporte >> caso2.txt
echo >> caso2.txt


echo "8. Las contraseñas de estos usuarios debe caducar cada 3 meses"
echo "Punto 8" >> caso2.txt
chage -l compras >> caso2.txt
chage -l comercial >> caso2.txt
chage -l ventas >> caso2.txt
chage -l administrativo >> caso2.txt
chage -l soporte >> caso2.txt
echo >> caso2.txt


echo "9. Debe tener instalado la última versión de los paquetes: samba y samba-client"
echo "Punto 9" >> caso2.txt
yum install --assumeno samba samba-client >> caso2.txt
echo >> caso2.txt


echo "10. Debe crear una carpeta llamada /guias que pertenezca al grupo ahino y que los usuario que pertenezcan a este grupo puedan leer, escribir, ejecutar sobre esta carpeta"
echo "Punto 10" >> caso2.txt
ls -ld /guias & >> caso2.txt
echo >> caso2.txt

echo "11. Cree 100 archivos de texto vacíos sobre la carpeta /guias con el nombre que usted desee"
echo "Punto 11" >> caso2.txt
ls -l /guias | wc -l >> caso2.txt
echo >> caso2.txt


echo "12. Garantice que el servicio llamado cups no se encuentre activo y que no inicie después del reinicio de la máquina"
echo "Punto 12" >> caso2.txt
systemctl is-enabled cups >> caso2.txt
echo >> caso2.txt

echo "13 Indique la versión exacta del sistema operativo"
echo "Punto 13" >> caso2.txt
echo -n  "   Nombre del S.O, version, release: "
read so
echo $so >> caso2.txt
echo >> caso2.txt

echo "14. Cree una subcarpeta llamada /guias/config y copie en esta ubicación los archivos /etc/redhat-release, /etc/passwd y /usr/share/dict/linux.words"
echo "Punto 14" >> caso2.txt
ls -ld /guias/config &>> caso2.txt
ls -l /guias/config &>> caso2.txt
echo >> caso2.txt

echo "15. Cree un enlace simbólico llamado /guias/config/grupos apuntando al archivo /etc/group"
echo "Punto 15" >> caso2.txt
ls -l /guias/config/grupos &>> caso2.txt
echo >> caso2.txt

echo "16. Incluya el mensaje "El problema no es problema" en el archivo /etc/motd, para que cuando un usuario haga login se muestra el MOTD (mensaje del dia)"
echo "Punto 16" >> caso2.txt
cat /etc/issue >> caso2.txt
echo >> caso2.txt


echo "17. Liste las particiones y los puntos de montaje de su sistema operativo y envíe la salida al archivo /tmp/particiones.txt"
echo "Punto 17" >> caso2.txt
cat /tmp/particiones.txt >> caso2.txt
echo >> caso2.txt

echo "18 Indique qué sistema de archivos tiene su partición /" 
echo "Punto 18" >> caso2.txt
echo -n "   Sistema de archivos: "
read fs1
echo $fs1 >> caso2.txt
df -Th / >> caso2.txt


