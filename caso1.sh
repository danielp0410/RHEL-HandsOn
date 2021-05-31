#! /bin/bash
rm -rf caso1.txt
# Script de validacion de los diferentes putnos

clear
echo "Este script lo puede correr cuantas veces desee, los resultados seran enviados al archivo caso1.txt, si luego de ejecutar el script encontro que le hizo falta solucionar algun punto, puede darle ctrl + c para cancelar la ejecucion y volver a ejecutarlo, una vez finalizado se le solicitara que envie adjunto caso1.txt por correo electronico"
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
echo "1. Idealmente debe ser una instalación fresca y nueva. (iniciando desde 0)
2. Debe estar full actualizado a la fecha (no debe tener actualizaciones pendientes)
3. Debe tener Red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)
4. Debe tener el servicio de SELinux activo
5. Debe tener el servicio de firewalld en ejecución y con los puertos 22 (SSH) y 5432 (PostgreSQL) abiertos.
6. El servicio de SSH **NO** debe permitir conexiones del usuario root
7. Debe contar con una contraseña segura
8. Debe tener un usuario adicional diferente a root, que tenga privilegios de sudo para ejecutar tareas administrativas
9. La contraseña de este usuario debe caducar cada 3 meses
10. Debe crear una carpeta llamada /compartida en la que el usuario administrativo pueda leer y escribir (con el objetivo de poner archivos de configuración, reportes, logs, archivos temporales
11. Dentro de esta carpeta /compartida, debe crear un primer archivo comprimido (no importa la herramienta) con el backup de la carpeta /etc
12. Elimine el archivo /etc/issue.net
13. Envie la salida estandar del comando netstat -ntpl al archivo /tmp/puertos_tcp.txt (Si no esta instalado el paquete netstat instalelo
14. Incluya este mensaje en el archivo /etc/issue, para que cuadno un usuario haga login visualice esta informacion
15. Busque en el el archivo de log /var/log/message o /var/log/secure las **autenticaciones** exitosos y fallidos al sistema operativo y guarde el resultado como logins.txt en la carpeta /compartida/
16. La zona horarioa debe ser America/Bogota
17. Todas las configuraciones deben sobrevivir a un reinicio
18. Envie el archivo kickstar como plantilla "

echo 
echo 
echo -n "Presione enter para iniciar con la validacion de todos los puntos"
read
clear

echo  "1. Presione S Es una instalacion nueva o N si es una instalacion ya existente S/N"
read punto1
echo "Punto 1: $punto1" >> caso1.txt
echo >> caso1.txt

echo  "2. Debe estar full actualizado a la fecha (no debe tener actualizaciones pendientes)"
echo "Punto 2" >> caso1.txt
yum update --assumeno >> caso1.txt
echo >> caso1.txt

echo  "3. Debe tener Red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)"
echo "Punto 3" >> caso1.txt
ip a >>  caso1.txt
echo >> caso1.txt
ip route  >>  caso1.txt
echo >> caso1.txt
cat /etc/resolv.conf >>  caso1.txt
echo >> caso1.txt

echo  "4. Debe tener el servicio de SELinux activo"
echo "Punto 4" >> caso1.txt
getenforce  >> caso1.txt
echo >> caso1.txt

echo "5. Debe tener el servicio de firewalld en ejecución y con los puertos 22 (SSH) y 5432 (PostgreSQL) abiertos."
echo "Punto 5" >> caso1.txt
firewall-cmd --list-all >> caso1.txt
echo >> caso1.txt

echo "6. El servicio de SSH **NO** debe permitir conexiones del usuario root"
echo "Punto 6" >> caso1.txt
grep -i root /etc/ssh/sshd_config >> caso1.txt
echo >> caso1.txt

echo "7. Debe contar con una contraseña segura"
echo -n "   Indique la contraseña del usuario root: "
read password
echo "Punto 7" >> caso1.txt
echo $password >> caso1.txt
echo >> caso1.txt

echo "8. Debe tener un usuario adicional diferente a root, que tenga privilegios de sudo para ejecutar tareas administrativas"
echo -n "   Indique el usuario adicional que creo para este laboratorio: "
read usuario
echo "Punto 8" >> caso1.txt
sudo -l -U $usuario >> caso1.txt
echo >> caso1.txt


echo "9. La contraseña de este usuario debe caducar cada 3 meses"
echo "Punto 9" >> caso1.txt
chage -l  $usuario >> caso1.txt
echo >> caso1.txt

echo "10. Debe crear una carpeta llamada /compartida en la que el usuario administrativo pueda leer y escribir (con el objetivo de poner archivos de configuración, reportes, logs, archivos temporales"
echo "Punto 10" >> caso1.txt
ls -ld /compartida >> caso1.txt
echo >> caso1.txt


echo "11. Dentro de esta carpeta /compartida, debe crear un primer archivo comprimido (no importa la herramienta) con el backup de la carpeta /etc"
echo "Punto 11" >> caso1.txt
ls -l /compartida >> caso1.txt
echo >> caso1.txt

echo "12. Elimine el archivo /etc/issue.net"
echo "Punto 12" >> caso1.txt
ls -l /etc/issue.net &>> caso1.txt
echo >> caso1.txt

echo "13. Envie la salida estandar del comando netstat -ntpl al archivo /tmp/puertos_tcp.txt (Si no esta instalado el paquete netstat instalelo"
echo "Punto 13" >> caso1.txt
cat /tmp/puertos_tcp.txt >> caso1.txt
echo >> caso1.txt

echo "14. Incluya el mensaje "Welcome to the Jungle" en el archivo /etc/issue, para que cuando un usuario haga login visualice esta informacion"
echo "Punto 14" >> caso1.txt
cat /etc/issue >> caso1.txt
echo >> caso1.txt

echo "15. Busque en el el archivo de log /var/log/message o /var/log/secure las **autenticaciones** exitosos y fallidos al sistema operativo y guarde el resultado como logins.txt en la carpeta /compartida/"
echo "Punto 15" >> caso1.txt
cat /compartida/logins.txt >> caso1.txt
echo >> caso1.txt


echo "16. La zona horarioa debe ser America/Bogota"
echo "Punto 16" >> caso1.txt
timedatectl  >> caso1.txt
echo >> caso1.txt

echo "17. Todas las configuraciones deben sobrevivir a un reinicio"
echo "Punto 17" >> caso1.txt
systemctl is-enabled firewalld >> caso1.txt
systemctl is-enabled sshd >> caso1.txt


echo "18. Envie el archivo kickstar como plantilla "
echo -n "escriba la Ruta completa del archivo kickstart generado (ej: /root/archivo-ks.cfg):"
read kickstart
echo $kickstart >> caso1.txt
echo "cat  $kickstart  >> caso1.txt" > kstmp.sh
sh kstmp.sh 
rm kstmp.sh



