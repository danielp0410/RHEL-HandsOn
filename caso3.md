
# DESCRIPCIÓN DEL CASO 3
El administrador del departamento de sistemas de uno de los grupos de comercio al detal más reconocido del país necesita configurar un servidor para labores de servicio al cliente con las siguientes características:

## ACTIVIDADES A REALIZAR
1. Debe ser una instalación nueva. (iniciando desde 0)
2. Debe estar completamente actualizado hasta la fecha (no debe tener actualizaciones pendientes)
3. Debe tener Red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)
4. Deben existir 2 perfiles de usuario: user1 y user2
5. Cada usuario debe tener una contraseña segura
6. El user1 no puede navegar en URL públicas
7. El user2 puede navegar en URL públicas
8. El servicio de SSH NO debe permitir conexiones del usuario root
9. Cree una tarea crontab que busque los archivos de carpetas /tmp y /var/tmp y los borre cada 2 minutos.



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
Para calificar hay 1 opcion de envio de resultados.

## Recopilacion de resultados de forma Manual
En cada uno de los pasos mencionados anteriormente enviar la salida de los comandos que permite ver la evidencia que el punto fue desarrollado, por medio de la herramienta de su preferencia, sea Word con imagenes descriptivas, presentaciones, archivos txt, Etc.
