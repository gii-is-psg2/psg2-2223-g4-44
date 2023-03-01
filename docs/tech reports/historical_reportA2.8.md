# Historial Report

## Introducción y Planificación

En este documento se relatan los detalles de la elaboración de las actividades correspondientes al apartado A2.8 del *Product Backlog.* Concretamente: 

1. Create a Pet Hotel functionality, allowing clients to submit details about which pet they want to book a room for, as well as the start and finish dates for the booking.
2. Change the overall style of the website, modifying the logos, fonts and colors of the pages. It should use brownish tones.
3. Add creation and editing support to veterinarians.
4. Add delete support to all main domain objects (owners, pets, veterinarians…).
5. Add a complete localization of the site to Spanish.


Los miembros del grupo realizamos una tempranera reunión el domingo 19 de febrero con el fin de repartir todas las tareas del A2.5 en adelante. Resultando de la siguiente forma los aprtados del A2.8:
- A2.8 a – Alberto
- A2.8 b – Ignacio
- A2.8 c – Alejandro
- A2.8 d – Antonio
- A2.8 e – Gabriel 

Además, acordamos que si alguno tenía algun tipo de problema desarrollando su apartado podía preguntar sin problema ninguno a cualquier otro miembro del equipo de desarrollo. Todo para fomentar el trabajo en equipo y lograr nuestro objetivo común.

El resto de apartados se repartieron de la siguiente forma:
- A2.6 – Ignacio y Gabriel
- A2.7 – Antonio
- A2.9 – Ignacio y Alberto
- A2.10 – Alejandro

## Diagrama Temporal Commits
(Actualizar fotos una vez esté terminado el A2.8)
![Pantalla de computadora con letras Descripción generada automáticamente con confianza media](/docs/tech%20reports/images/commits-150223.png)
![Pantalla de computadora con letras Descripción generada automáticamente](/docs/tech%20reports/images/commits-100223.png)


## Conflictos

### A2.8-a

En este primer subapartado, Alberto tuvo un único inconveniente relacionado con las Querys puesto que no recordaba de forma excelsa y perfecta sql, así pues repaso algunos proyectos de DP y ademas buscó en internet para conseguir la solución.

### A2.8-b

Ignacio en este apartado tan solo tuvo problemas con las fotos, concretamente con el tamaño de las mismas ya que no lograba que se ajustaran. A parte de eso, no tuvo ningún problema más más allá de escoger los tonos de marrón de la página. La solución que encontró para arreglar los tamaños fue usar la web https://www.befunky.com/es/opciones/cambiar-tamanos-de-imagenes/ y tras varios intentos logró cuadrar el tamaño a la perfección.

### A2.8 e

Gabriel en este apartado tuvo una serie de problemas respecto al versionado de dependencias de internacionalizacion. Además, visual studio sugeria añadir una bateria de dependencias al pom para solucionar este problema de versionado; sin embargo, al añadirlas, surgia otro problema similar con el versionado. En este punto decidió pedir ayuda y Alberto salió al rescate solucionandolo en tan solo media hora. La solución fue tan simple como añadir una dependencia de internacionalizacion, pero jugó con la ventaja de que a él no le salia ningun problema de versionado por lo que logró arreglarlo.

