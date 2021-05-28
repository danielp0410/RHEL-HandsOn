# Caso No. 1
El Banco Oro Solido requiere implemantar una solucion de base de datos en un cluster de 3 nodos sobre un sistema operativo Red Hat Enterprise Linux, teniendo en cuenta que esta actividad la debe realizar multiples veces, y antes de ser llevada a produccion debe ser probada y validada por multiples equipos, entre ellos el de seguridad, Le han solictado que previo a dicha implementacion productiva, quisiera contar con un servidor de sirva como plantilla, el cual cumpla con los siguientes requisitos previos a la entrega:

1. Debe ser una instalacion fresca y nueva. (iniciando desde 0)
2. Debe estar full actualizado a la fecha (no debe tener actualizaciones pendientes)
3. Debe tener red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)
4. Debe tener el servicio de SELinux activo
5. Debe tener el servicio de firewalld en ejecucion y con los puertos 22 (SSH) y 5432 (PostgreSQL) abiertos.
6. Debe contar con una contraseña segura
7. Debe tener un usuario adicional diferente a root, que tenga privilegios de sudo para ejecutar tareas administrativas 
8. La contraseña de este usuario debe caducar cada 3 meses
9. Debe crear una carpeta llamada /compartida en la que el usuario administrativo pueda leer y escribir (con el objetivo de poner archivos de configuracion, reportes, logs, archivos temporales
10. Dentro de esta carpeta /compartida, debe crear un primer archivo comprimido (no importa al herramienta) con el backup de la carpeta /etc
11. 


1. Envie el archivo kickstar como plantilla 
2. Mantener actrualizado el sistema


Todas las configuraciones deben sobrevivir a un reinicio



# Instrucciones
