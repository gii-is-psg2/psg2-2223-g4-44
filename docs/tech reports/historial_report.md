# Historial Report

## Introducción y Planificación

En este documento se relatan los detalles de la elaboración de las actividades correspondientes al apartado A2.5 del *Product Backlog.* Concretamente: 

1. Add your information to the developers section in pom.xml (see <https://maven.apache.org/pom.html#developers>). **NOTE**: This task should be implemented by each of the group members
2. Change the project information in pom.xml according to the following attributes (where GX-XY is your group id):
   1. groupId = es.us.psg2
   2. artifactId = spring-petclinic.psg2.2223-GX-XY
   3. version = 1.0.0
   4. name = PSG2-2223-GX-XY Petclinic
3. Change the color of the header buttons when selected to light red.
4. Change the background color of the header menu to light green.
5. Change the message of the Welcome page to “Welcome to the PSG2-2223-GX-XY Petclinic ”, where GX-XY is your group id .
6. Change the image of the Welcome page with another pet you like.
7. Change the background color of the table header when looking for owners to light grey.
8. Change the information included in the info.yml file located in the repository to reflect the actual information of the group.


En primer lugar, los miembros del grupo tras realizar una reunión el viernes 10 de febrero con el fin de conocernos y tener un primer contacto con el proyecto, decidieron repartirse el trabajo de la siguiente forma: Los apartados b y e los haría Ignacio; Los apartados c y d Antonio; El apartado f fue tarea de Gabriel; El apartado h de Alejandro y del apartado g se encargó Alberto, quién además se ocupó de organizar la reunión y de contactar con el resto de integrantes de la tropa.

Además de esos apartados, cada uno debía añadir su propia información al pom.xml realizando de manera conjunta la tarea a.

Tras acabar todos los subapartados del A2.5 realizamos otra tertulia el día 15 para examinar entre todos el trabajo perpetrado hasta el momento en el proyecto, así como el tiempo invertido en la herramienta *clockify*. Compartimos además los problemas que surgieron, los cuales serán presentados más adelante en este mismo documento. 

Además, en otra reunión acontecida el 19, planificamos el resto de los apartados quedando asignados de la siguiente forma: 
- A2.6 – Ignacio y Gabriel
- A2.7 – Antonio
- A2.8 a – Alberto
- A2.8 b – Ignacio
- A2.8 c – Alejandro
- A2.8 d – Antonio
- A2.8 e – Gabriel
- A2.9 – Ignacio y Alberto
- A2.10 – Alejandro

## Diagrama Temporal Commits

![Pantalla de computadora con letras Descripción generada automáticamente con confianza media](/docs/tech%20reports/images/commits-150223.png)
![Pantalla de computadora con letras Descripción generada automáticamente](/docs/tech%20reports/images/commits-100223.png)


## Conflictos

Tras perorar todos los miembros del grupo en la pasada asamblea del día 15 tan solo salieron 2 conflictos, ambos con un enemigo común, el pom.xml.

El primero de ellos surge al configurar el proyecto por primera vez ya que, por algún motivo, *visual studio* detectaba diferentes errores a lo largo del pom sin ninguna causa aparente puesto que, como ya se ha apuntado, el repositorio estaba recién configurado. 

Tras horas de batalla ahondando en el archivo, por fin se logró averiguar cuál era el origen del fallo y este resultó ser la versión de java que el ordenador manejaba. Fácilmente se solventó este error creando nuevas variables de entorno para java. 

El segundo conflicto tuvo su aparición días más tardes, durante la realización del subapartado b del apartado A2.5. Este consistía en modificar una serie de atributos del pom; sin embargo, al hacerlo se producían infinidad de errores que se propagaban a todo el repositorio alterando las dependencias y por consecuencia directa el código. 

La forma de solucionarlo fue probando poco a poco cuál de estos atributos provocaba el error. Con paciencia y algo de fortuna se acabó arreglando sin mayor trascendencia.
