
### La diferencia entre Procedimiento y Función es el uso del Return ? 


Afirmativo, y también su uso, uno es para usarlas de forma puntual para SQL (Funciones) y la otra es para rutinas generales (Stored Procedures) Juan Carlos answered at 6:34 pm
 
### Pero usando el procedimiento también lograste retornar un valor (OUT).

_Asi es Juan Carlos 

### Los INDEX ocupan espacio en BD ? 

Los INDEX si ocupan espacio en la base de datos, representa el 10%, 50% aprox del tamaño de la data, dependiendo del numero de indices y del tamaño de los campos. Asimismo, los indices deben ser optimos, maximo 7 por tabla. Juan Carlos answered at 6:39 pm

### ¿el triguer historico es como una tabla de auditoria?

Es correcto, los triggers tienen multiples usos: 1. Para guardar informacion historica.
2. Para guardar log.
3. Para continuar un proceso de ejecucion.
4. Para integridad. Juan Carlos answered at 6:39 pm

### Para conocer la sintaxis. ¿Tiene el PL/SQL un diccionario de funciones? 

 Asi es, y eso se tocará en una de las siguientes clases. Ahora bien, si se refieren a la autoayuda que aparece al momento de programar, ello dependerá de la herramienta IDE (SQL Developeer, TOAD, PLSQL Developer) Juan Carlos answered at 6:41 pm

 ### para habilitar la auditoria 
 
 Hay un parametro para la activación, una vez que se activa, comienza a auditar, asimismo cuales son las tablas que deseas auditar. OJO, la auditoria es la que mas espacio en disco consume, además consume procesamiento (escritura I/O). Juan Carlos answered at 6:42 pm

 ### hay que tener permiso de dba 

 Para crear triggers, stored procedures, functions no es necesario permisos de DBA; solo basta permisos de CREATE TRIGGER, CREATE PROCEDURES, CREATE FUNCTIONS, etc
 
