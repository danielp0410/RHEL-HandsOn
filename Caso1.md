# Caso No. 1

El **Banco Oro Sólido** requiere implementar una solución de base de datos en un cluster de 3 nodos sobre un sistema operativo **Red Hat Enterprise Linux**, teniendo en cuenta que esta actividad la debe realizar múltiples veces, y antes de ser llevada a producción debe ser probada y validada por múltiples equipos, entre ellos el de seguridad, Le han solicitado que previo a dicha implementación productiva, quisiera contar con un servidor de sirva como plantilla, el cual cumpla con los siguientes requisitos previos a la entrega:

1. Debe ser una instalación fresca y nueva. (iniciando desde 0)
2. Debe estar full actualizado a la fecha (no debe tener actualizaciones pendientes)
3. Debe tener red configurada con: (Direccion IP, Mascara, Puerta de enlace, DNS)
4. Debe tener el servicio de SELinux activo
5. Debe tener el servicio de firewalld en ejecución y con los puertos 22 (SSH) y 5432 (PostgreSQL) abiertos.
6. El servicio de SSH **NO** debe permitir conexiones del usuario root
7. Debe contar con una contraseña segura
8. Debe tener un usuario adicional diferente a root, que tenga privilegios de sudo para ejecutar tareas administrativas
9. La contraseña de este usuario debe caducar cada 3 meses
10. Debe crear una carpeta llamada /compartida en la que el usuario administrativo pueda leer y escribir (con el objetivo de poner archivos de configuración, reportes, logs, archivos temporales
11. Dentro de esta carpeta /compartida, debe crear un primer archivo comprimido (no importa la herramienta) con el backup de la carpeta /etc
12. Elimine el archivo .....
13. 

ds1. Envie el archivo kickstar como plantilla 
2. Mantener actrualizado el sistema


Todas las configuraciones deben sobrevivir a un reinicio


# Instrucciones
