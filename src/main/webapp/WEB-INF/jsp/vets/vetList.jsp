<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="vets">

    <body style="background: #F5CBA7"> 

        
        <style>
            .table>thead>tr>th {
                background-color: rgb(255, 182, 92);
                color:#34302D;
            }
        </style>
        


    <h2><spring:message code="botonVets"/></h2>


    </table>
    <table id="vetsTable" class="table table-striped">
        <thead>
        <tr>

            <th> <spring:message code="name"/></th>
            <th><spring:message code="specialities"/></th>
            <th>Action</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${vets.vetList}" var="vet">
            <tr>
                <td>
                    <c:out value="${vet.firstName} ${vet.lastName}"/>
                </td>
                <td>
                    <c:forEach var="specialty" items="${vet.specialties}">
                        <c:out value="${specialty.name} "/>

                    </c:forEach>

                    <c:if test="${vet.nrOfSpecialties == 0}">none</c:if>
                </td>
                <td>

                    <sec:authorize access="hasAuthority('admin')">
                        <a class="btn btn-default" href="/vets/${vet.id}/edit">Edit Vet</a>
                    </sec:authorize>
                    <a href="/vets/${vet.id}/delete"><button class="btn btn-danger">Borrar</button></a>
                </td>        

            </tr>
        </c:forEach>
        </tbody>
    </table>

    <sec:authorize access="hasAuthority('admin')">
		<a class="btn btn-default" href='<spring:url value="/vets/new" htmlEscape="true"/>'>Add Vet</a>
    </sec:authorize>

   

    

    <table class="table-buttons">
        <tr>
            <td>
                <br>
                <a href="<spring:url value="/vets.xml" htmlEscape="true" />">View as XML</a>
            </td>            
        </tr>
    </table>

    </body>

</petclinic:layout>
