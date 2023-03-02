<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>
<!-- %@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %-->  

<petclinic:layout pageName="home">

<body style="background: #F5CBA7">
    

    <center><p style="color: rgb(149, 116, 32)"><font SIZE="5">
        <h1><spring:message code="saludo" text="default"/></h1>

    </font>
    

    <center><p style="color: black"><font SIZE="2">
        <h2><spring:message code="presentacion" text="default"/></h2>
</p>
    </font></center><br/>

    <center><p style="color: black"><font SIZE="2">

        <h3><spring:message code="introduccion" text="default"/></h3>
</p>
    </font></center><br/>

    <center><p style="color: black"><font SIZE="2">
        <h3><spring:message code="dedicacion" text="default"/></h3>

    </font></center><br/>

    
    <div class="row">
        <div class="col-md-12">
            <spring:url value="/resources/images/patano1.jpg" htmlEscape="true" var="petsImage"/>
            <img class="img-responsive" src="${petsImage}"/>
        </div>
    </div>

</body>

</petclinic:layout>
