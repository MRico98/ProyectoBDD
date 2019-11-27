<h1>Proyecto final "Diseño de bases de datos"</h1>

> El fin de este repositorio es para le proyecto final de la asignatura "Diseño de bases de datos"

Instrucciones:

```
En el gimnasio “Zagros Sport” se quiere implantar un Sistema de Información para llevar el control de los socios 
y recursos utilizados, etc. Las especificaciones que nos han dado para el Diseño de la Base de Datos son las siguientes:
- Existen varias salas, de las cuales se quiere guardar información, como los metros cuadrados que ocupa, ubicación y el tipo de sala (cardio, general, muscular). Cada sala se identifica con un número.
- Hay salas que tienen aparatos y salas que no. En las salas se pueden o no impartir clases.
- Cada aparato está asignado a una única sala, y de cada uno de ellos se quiere tener almacenado su código, descripción y estado de conservación.
- También se quiere mantener información relacionada con las clases que se imparten (descripción y día/hora en la que se imparte); cada clase se identifica por un código de clase. Cada clase tiene asignada una sala en la que se imparte y un monitor.
- De cada monitor se quiere conocer el DNI, nombre, teléfono, si tienen o no titulación y experiencia profesional, así como las clases que pueden impartir (preparación como monitor de aerobic, step, streching, etc.).
- De cada socio se quiere conocer el número de socio, nombre, dirección, teléfono, profesión y datos bancarios, así como las clases a las que asiste.
- El gimnasio dispone también de pistas de squash, de las que se quiere conocer el número de pista, ubicación y estado. Las pistas de squash pueden ser utilizadas por socios y existe un servicio de reserva de pista (en una fecha y a una hora).
```

```
1. Elabore EL Diseño Lógico de la BD para el Sistema de Información del gimnasio “Zagros Sport” utilizando el procedimiento estudiado en la Unidad 3 (Modelo Conceptual con E/R y Reglas de Transformación para obtener el Modelo Lógico).
(3 Pts.)
2. Elabore EL Diseño Lógico de la BD para el Sistema de Información del gimnasio “Zagros Sport” utilizando el procedimiento estudiado en la Unidad 4 (Aplicar el Proceso de Normalización para obtener el Modelo lógico con relaciones validadas hasta la 4FN).
(3 Pts.)
3. Reflexione con sus compañeros de equipo y elabore un reporte en torno a las bondades e implicaciones de cada uno de los dos procesos de diseño estudiados. Con base en lo adquirido durante el curso y con la presente reflexión, sugiera (con argumentos) el procedimiento a utilizar para el Diseño de una BDR.
(4 Pts.)
4. Realice una investigación documental sobre 3 SMBD relacionales, y elabore un reporte indicando: datos de autoría, características y tabla comparativa. Seleccione (con argumentos) uno de dichos SMBD.
(4 Pts.)
5. Utilizando el Sistema Manejador de Bases de Datos seleccionado, Implemente el Diseño Físico de la Base de Datos del problema descrito (incluya las sentencias en el reporte).
(5 Pts.)
6. Utilizando el Sistema Manejador de Bases de Datos seleccionado, capture un conjunto de tuplas relacionadas con la información que dicha BD mantiene (incluya un par de ejemplos de las sentencias utilizadas para la captura en el reporte).
(4 Pts.)
7. Utilizando el Sistema Manejador de Bases de Datos seleccionado, implemente el siguiente conjunto de consultas (incluya en el reporte, las sentencias utilizadas para las 7 solicitudes, así como capturas de pantalla de lo generado una vez ejecutados dichas consultas).
  - Obtener la relación de salas de que consta el GYM, con el detalle: Identificador, Ubicación, Tipo, metros cuadrados.  
  - Obtener la relación de aparatos adquiridos por el GYM con el detalle: Código, descripción, edo. Conservación.
  - Obtener la relación de instructores que trabajan para el GYM, con el detalle: DNI, Nombre, Preparación.
  - Obtener la relación de socios registrados al GYM, con el detalle: No. Socio, Nombre, Teléfono.
  - Obtener la relación de clases programadas para la semana, con el detalle: No. Sala, Instructor, Descripción, Horario, Día.  
  - Obtener la relación de pistas reservadas para el fin de semana, con el detalle: Fecha, Hora, No. pista, No. Socio que realizó la reserva.
  -Agregue una consulta que considere requerida para el administrador del GYM (justifíquela).
(7 Pts.)
```

##Integrantes

-Elena Soledad Medina
-Manuel Martin Rico
-Zeus Sarmiento Serrano
-Jorge Garcia
-Salma Rubi Wabi
