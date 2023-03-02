<%@ page session="false" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

<petclinic:layout pageName="owners">

    <body style="background: #F5CBA7">

    <style>
        .table>thead>tr>th {
            background-color: rgb(255, 182, 92);
            color:#34302D;
        }
    </style>

    <h2><spring:message code="owners"/></h2>

    <table id="ownersTable" class="table table-striped">
        <thead>
        <tr>

            <th style="width: 150px;"> <spring:message code="name"/></th>
            <th style="width: 200px;"> <spring:message code="address"/></th>
            <th><spring:message code="city"/></th>
            <th style="width: 120px"> <spring:message code="telephone"/></th>
            <th><spring:message code="pets"/></th>
            <th>Action</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${selections}" var="owner">
            <tr>
                <td>
                    <spring:url value="/owners/{ownerId}" var="ownerUrl">
                        <spring:param name="ownerId" value="${owner.id}"/>
                    </spring:url>
                    <a href="${fn:escapeXml(ownerUrl)}"><c:out value="${owner.firstName} ${owner.lastName}"/></a>
                </td>
                <td>
                    <c:out value="${owner.address}"/>
                </td>
                <td>
                    <c:out value="${owner.city}"/>
                </td>
                <td>
                    <c:out value="${owner.telephone}"/>
                </td>
                <td>
                    <c:forEach var="pet" items="${owner.pets}">
                        <c:out value="${pet.name} "/>
                    </c:forEach>
                </td>
                <td>
                    <a href="/owners/${owner.id}/delete"><button class="btn btn-danger">Borrar</button></a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    </body>
</petclinic:layout>
