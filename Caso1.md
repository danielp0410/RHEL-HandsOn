# Caso No. 1

![Ref](Images/red-hat-logo-d-sample_2.png)


## Descripcion del Caso

El **Banco Oro Sólido** requiere implementar una solución de base de datos en un cluster de 3 nodos sobre un sistema operativo **Red Hat Enterprise Linux**, teniendo en cuenta que esta actividad la debe realizar múltiples veces, y antes de ser llevada a producción debe ser probada y validada por múltiples equipos, entre ellos el de seguridad, Le han solicitado que previo a dicha implementación productiva, quisiera contar con un servidor de sirva como plantilla, el cual cumpla con los siguientes requisitos previos a la entrega

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
12. Elimine el archivo .....
13. Envie la salida estandar del comando netstat -ntpl al archivo /tmp/puertos_tcp.txt (Si no esta instalado el paquete netstat instalelo
14. Incluya este mensaje en el archivo /etc/issue, para que cuadno un usuario haga login visualice esta informacion
15. Busque en el el archivo de log /var/log/message o /var/log/secure los **logins** exitosos y fallidos al sistema operativo y guarde el resultado como logins.txt en la carpeta /compartida/
16. La zona horarioa debe ser America/Bogota
17. Todas las configuraciones deben sobrevivir a un reinicio
18. Envie el archivo kickstar como plantilla 






# Instrucciones

Los casos de uso pueden ser aplicados sobre sistema operativos, RHEL7, RHEL8, CentOS7, CentOS8

Si tiene la posibilidad de contar con un sistema de maquinas virtuales en su portatil y/o laboratorio local, le recomiendo hacer la instalacion desde cero como se indica en el punto numero 1. En caso de no poder contar con dicho laboratorio, puede realizar el 90% de los puntos en este link:


[Volver](README.md) 
