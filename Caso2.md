# Caso No. 2

![Ref](Images/red-hat-logo-d-sample_2.png)

## Descripcion del Caso

La transportadora **Mi Cacharrito** Se encuentra implementando un servidor para almacenar todas las guías de transporte en un servidor de archivos compartido y así poder ser más ágiles con muchos de sus trámites. Para esto contrataron una compañía especializada en sistemas de información que implementaran un software llamado **AHINO!** el cual se ejecuta sobre sistemas operativos Linux como **Red Hat Enterprise Linux**. El proveedor del software solicita que, previo a la instalación del producto, se entregue una maquina lista, ya que ellos únicamente instalarán el software.

## Actividades a realizar

Los Pre-requisitos para la instalación del software son:

1. Garantizar que el el sistema operativo se encuentre full actualizado (no debe tener actualizaciones pendientes)
2. Debe tener Red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)
3. Debe tener el servicio de SELinux activo
4. Debe tener el servicio de firewalld en ejecución y con los puertos 22 (SSH) y el servicio de firewall *samba* 
5. El servicio de SSH **NO** debe permitir conexiones del usuario root
6. Debe crear cinco (5) usuarios adicional con su respectivas contraseñas seguras asignadas: compras, comercial, ventas, administrativo, soporte
7. Todos estos usuario deben pertenecer a un grupo adicional llamado *ahino*
8. Las contraseñas de estos usuarios debe caducar cada 3 meses
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



# Instrucciones

Los casos de uso pueden ser aplicados sobre sistema operativos Red Hat, RHEL7, RHEL8 o CentOS7, CentOS8

Si tiene la posibilidad de contar con un sistema de máquinas virtuales en su portátil y/o laboratorio local, le recomiendo hacer la instalación desde cero como se indica en el punto número 1. En caso de no poder contar con dicho laboratorio, puede realizar el 90% de los puntos en este link:

https://www.katacoda.com/courses/centos/playground

Con la limitación que este ambiente únicamente puede durar 10 minutos o en caso que el trabajo sea constante puede durar hasta 1 hora (NO MAS DE ESTO), asi que deberia sacar las evidencias de los resultados durante este tiempo, dicha terminal deja copiar y pegar entre pantallas

# Calificaciones
Para las calificaciones hay 2 opciones.
## Manual
En cada uno de los pasos mencionados anteriormente enviar la salida de los comandos que permite ver la evidencia que el punto fue desarrollado

## Automática
Se creó un script llamado `caso1.sh` que se encargará de ejecutar los diferentes comandos para validar las evidencias de forma automática, generando una salida en el archivo de texto caso1.txt el cual se le solicitará que envíe como evidencia

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

*NOTA 3:* Intente **NO** compartir el archivo de resultado con sus compañeros, la idea es que usted pueda validar sus conocimientos


[Volver](README.md)


