# Caso No. 2

![Ref](Images/red-hat-logo-d-sample_2.png)

## Descripcion del Caso

La transportadora **Mi Cacharrito** se encuentra implementando un servidor de archivos para almacenar todas las guias de transporte en un servidor de archivos compartido y asi poder ser mas agiles un muchos tramites, para esto contrataron una compañia especializada en sistemas de informacion que implementaran un software llamado **AHINO!** el cual corres sobre sistemas operativos Linux como **Red Hat Enterprise Linux** pero solicitan que previo a la instalacion del software el cliente debe entregar una maquina lista, ya que ellos unicamente instalaran el software.

## Actividades a realizar

Los Pre-requisitos para la instalacion del software son:

1. Garantizar que el el sistema operativo se encuentre full actualizado (no debe tener actualizaciones pendientes)
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
16. Incluya este mensaje en el archivo /etc/motd, para que cuando un usuario haga login se muestre el MOTD (mensaje del dia)
17. Liste las particiones y los puntos de montaje de su sistema operativo y envie la salida al archivo /tmp/particiones.txt
18. Indique que sistema de archivos tiene su particion /













[Volver](README.md) 
