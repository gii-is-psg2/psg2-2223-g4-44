<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<!-- %@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %-->  

<petclinic:layout pageName="home">
    

    <center><p style="color: rgb(11, 18, 210)"><font SIZE="5">
        Hola y bienvenidos a la unica e iniguanable "Clinica veterinaria Bonn"
    </font>
    

    <center><p style="color: black"><font SIZE="2">

        Bienvenidos
Desde la Clinica Veterinaria Bonn queremos brindar un trato diferencial y personalizado a su mascota, mas de 15 años de experiencia nos avalan. Encontrara nuestra clinica veterinaria en Madrid centro, en el corazon de Parque de las Avenidas, en la Avenida de Bonn numero 12.
</p>
    </font></center><br/>

    <center><p style="color: black"><font SIZE="2">

Nuestro servicio veterinario para perros y gatos se basa en la medicina preventiva con el fin de proteger a su mascota de diferentes enfermedades antes de la aparicion de los primeros sintomas. Para ello, ofrecemos la vacunacion de cachorros, como tambien la de perros y gatos adultos.
Basandonos en este principio de prevencion, destacamos tambien la importancia de la desparasitacion interna y externa de forma periodica en su mascota.
</p>
    </font></center><br/>

    <center><p style="color: black"><font SIZE="2">

Dentro del servicio de consulta llevamos a cabo la implantacion de microchip, basico para la seguridad de los animales. Paralelamente, contamos con las mas completas analiticas de orina y sangre, de este modo respaldamos de manera solida las revisiones periodicas, que a modo de prevencion, logran que su perro o gato pueda disfrutar de una vida en plena salud.

La alimentacion es otro de los pilares en los cuales debemos basarnos para asegurar una vida saludable a su mascota. En Clinica Veterinaria Bonn le ofrecemos un asesoramiento nutricional especifico para cada mascota en funcion de sus necesidades, contando con piensos de alta gama y dietas especificas para cada caso.</p>
    </font></center><br/>

    <div class="row">
        <div class="col-md-12">
            <spring:url value="/resources/images/patano1.jpg" htmlEscape="true" var="petsImage"/>
            <img class="img-responsive" src="${petsImage}"/>
        </div>
    </div>


</petclinic:layout>
