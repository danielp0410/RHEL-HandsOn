# Caso No. 2

![Ref](Images/red-hat-logo-d-sample_2.png)

## DESCRIPCIÓN DEL CASO 2

La empresa líder en logística de transporte de mercancía del país se encuentra implementando un servidor para almacenar todas las guías de servicio en un servidor de archivos compartido para ser más ágil en sus procesos. Para esto contrataron una compañía especializada en sistemas de información que implementaran un software encargado de integrar las operaciones de recolección, despacho y reparto, el cual se ejecuta sobre sistemas operativos Linux como Red Hat Enterprise Linux. El proveedor del software solicita que, previo a la instalación del producto, se entregue una maquina lista, ya que ellos únicamente instalarán el software.

## ACTIVIDADES A REALIZAR

Los Pre-requisitos para la instalación del software son:

1. Garantizar que el sistema operativo se encuentre totalmente actualizado (no debe tener actualizaciones pendientes)
2. Debe tener Red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)
3. Debe tener el servicio de SELinux activo
4. Debe tener el servicio de firewalld en ejecución y con los puertos 22 (SSH) y el servicio de firewall *samba* 
5. El servicio de SSH **NO** debe permitir hacer sessiones graficas por SSH (X11Forwarding)
6. Debe crear cinco (5) usuarios adicionales con su respectivas contraseñas seguras asignadas: compras, comercial, ventas, administrativo, soporte
7. Todos estos usuarios deben pertenecer a un grupo adicional llamado *ahino*
8. Las contraseñas de estos usuarios deben caducar cada 3 meses
9. Debe tener instalado la última versión de los paquetes: samba y samba-client
10. Debe crear una carpeta llamada /guias que pertenezca al grupo ahino y que los usuario que pertenezcan a este grupo puedan leer, escribir, ejecutar sobre esta carpeta
11. Cree 100 archivos de texto vacíos sobre la carpeta /guias con el nombre que usted desee
12. Garantice que el servicio llamado cups no se encuentre activo y que no inicie después del reinicio de la máquina
13. Indique la versión exacta del sistema operativo 
14. Cree una subcarpeta llamada /guias/config y copie en esta ubicación los archivos /etc/redhat-release, /etc/passwd y /usr/share/dict/linux.words
15. Cree un enlace simbólico llamado /guias/config/grupos apuntando al archivo /etc/group
16. Incluya el mensaje "El problema no es problema" en el archivo /etc/motd, para que cuando un usuario haga login se muestra el MOTD (mensaje del dia)
17. Liste las particiones y los puntos de montaje de su sistema operativo y envíe la salida al archivo /tmp/particiones.txt
18. Indique qué sistema de archivos tiene su partición /



# INSTRUCCIONES

Los casos de uso pueden ser aplicados sobre sistema operativos Red Hat, RHEL7, RHEL8 o CentOS7, CentOS8

Como recomendación principal es contar con un sistema de máquinas virtuales en su equipo de mesa o portátil y/o laboratorio local, le recomendamos realizar la instalación desde cero de la imagen del Sistema operativo elegido, como se indica en el punto número 1.

La imagen del Sistema operativo RHEL8 se encuentra en esta ruta, https://developers.redhat.com/download-manager/file/rhel-8.1-x86_64-dvd.iso. 

Adicionalemente instalamos la aplicacion Virtual Box desde el siguiente Link, https://www.virtualbox.org/wiki/Downloads, aqui encontraremos las versiones para el SO de preferencia en el apartado "VirtualBox 6.1.22 platform packages".

Es muy importante que antes de realizar las instalaciones, se debe activar la Virtualizacion del equipo, esto se realiza principalmente desde la configuracion de la BIOS.

En caso de no poder contar con dicho laboratorio, puede realizar el 90% de los puntos en este link:

https://www.katacoda.com/courses/centos/playground

Para ingresar a esta plataforma, se requiere registro, es rapido, con la limitación que este ambiente únicamente puede durar 10 minutos y en caso que el trabajo sea constante puede durar hasta 1 hora (NO MAS DE ESTO), asi que deberia sacar las evidencias de los resultados durante este tiempo, dicha terminal deja copiar y pegar entre pantallas.

# CALIFICACIONES
Para calificar hay 2 opciones de envio de resultados.

## Recopilacion de resultados de forma Manual
En cada uno de los pasos mencionados anteriormente enviar la salida de los comandos que permite ver la evidencia que el punto fue desarrollado, por medio de la herramienta de su preferencia, sea Word con imagenes descriptivas, presentaciones, archivos txt, Etc.

## Recopilacion de resultados de forma Automática
Se creó un script llamado `caso2.sh` que se encargará de ejecutar los diferentes comandos para validar las evidencias de forma automática, generando una salida en el archivo de texto caso2.txt el cual se le solicitará que envíe como evidencia, exportandolo desde su maquina.

Si su máquina cuenta con internet, puede ejecutar este comando en su máquina Linux
```
# wget https://raw.githubusercontent.com/jmanuelcalvo/RHEL-HandsOn/main/caso2.sh
```
y luego ejecutarlo como usuario root sobre su máquina para la calificación
```
# sh caso2.sh 
```


# NOTAS
*NOTA 1:* Este script de validación debe ejecutarse como usuario root

*NOTA 2:* Tenga en cuenta que este script busca los nombres exactos de los archivos solicitados

*NOTA 3:* Intente **NO** compartir el archivo de resultado con sus compañeros, la idea es que pueda validar sus conocimientos


[Caso No. 1](Caso1.md) 

[Volver](README.md)


