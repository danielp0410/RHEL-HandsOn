# Caso No. 1

![Ref](Images/red-hat-logo-d-sample_2.png)


## Descripcion del Caso

El **Banco Oro Sólido** requiere implementar una solución de base de datos en un cluster de 3 nodos sobre un sistema operativo **Red Hat Enterprise Linux**. Esta actividad se debe realizar múltiples veces, antes de ser llevada a producción debe ser probada y validada por múltiples equipos (entre ellos el de seguridad). De acuerdo a lo anterior, le han solicitado que previo a dicha implementación productiva, se requiere contar con un servidor que sirva como plantilla, y que cumpla con los siguientes requisitos previos a la entrega.

## Actividades a realizar

1. Idealmente debe ser una instalación fresca y nueva. (iniciando desde 0)
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
14. Incluya el mensaje "Welcome to the Jungle" en el archivo /etc/issue, para que cuando un usuario haga login visualice esta informacion
15. Busque en el el archivo de log /var/log/message o /var/log/secure las **autenticaciones** exitosos y fallidos al sistema operativo y guarde el resultado como logins.txt en la carpeta /compartida/
16. La zona horarioa debe ser America/Bogota
17. Todas las configuraciones deben sobrevivir a un reinicio
18. Envie el archivo kickstar como plantilla 






# Instrucciones

Los casos de uso pueden ser aplicados sobre sistema operativos Red Hat, RHEL7, RHEL8 o CentOS7, CentOS8

Si tiene la posibilidad de contar con un sistema de maquinas virtuales en su portatil y/o laboratorio local, le recomiendo hacer la instalacion desde cero como se indica en el punto numero 1. En caso de no poder contar con dicho laboratorio, puede realizar el 90% de los puntos en este link:

https://www.katacoda.com/courses/centos/playground

Con la limitacion que este ambiente unicamente puede durar 10 minutos o en caso que el trabajo sea constante puede durar hasta 1 hora (NO MAS DE ESTO), asi que deberia sacar las evidencias de los resultados durante este tiempo, dicha terminal deja copiar y pegar entre pantallas

# Calificaciones
Para las calificaciones hay 2 opciones.
## Manual
En cada uno de los pasos mensionados anteriormente enviar la salida de los comandos que permita ver la evidencia que el punto fue desarrollado

## Automatica
Se creo un script llamado `caso1.sh` que se encargara de ejecutar los diferentes comandos para validar las evidencias de forma automatica, generando una salida en el archivo de texto caso1.txt el cual se le solicitara que envie como evidencia

Si su maquina cuenta con internet, puede ejecutar este comando en su maquina Linux
```
# wget https://raw.githubusercontent.com/jmanuelcalvo/RHEL-HandsOn/main/caso1.sh
```
y luego ejecutelo como usuario root sobre su maquina para la calificacion
```
sh caso1.sh 
```


# NOTAS
*NOTA1:* Este script de validacion debe ejecutarse como usuario root

*NOTA2:* Tenga en cuanta que este script busca los nombres exactos de los archivos solicitados

*NOTA3:* Intente **NO** compartir el archivo de resultado con sus compañeros, la idea es que usted pueda validar sus concimientos




[Volver](README.md) 
