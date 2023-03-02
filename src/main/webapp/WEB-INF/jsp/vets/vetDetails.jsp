<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="vets">

    <h2>Vet Information</h2>

    <table class="table table-striped">
        <tr>
            <th>Name</th>
            <td><b><c:out value="${vet.firstName}"/></b></td>
        </tr>
        <tr>
            <th>Last Name</th>
            <td><b><c:out value="${vet.lastName}"/></b></td>
        </tr>
        <tr>
            <th>Specialties</th>
            <td><b><c:out value="${vet.specialties}"/></b></td>
        </tr>
    </table>

    <spring:url value="${vet.id}/edit" var="editUrl">
        <spring:param name="vetId" value="${vet.id}"/>
    </spring:url>

    <a href="${fn:escapeXml(editUrl)}" class="btn btn-default">Edit Vet</a>

</petclinic:layout>
