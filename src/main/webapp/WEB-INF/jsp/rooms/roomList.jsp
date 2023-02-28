<%@ page session="false" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                    <%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

                        <petclinic:layout pageName="rooms">
                            <h2>Habitaciones</h2>

                            <table id="roomsTable" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Numero de Habitacion</th>
                                        <th>Planta</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${rooms}" var="room">
                                        <tr>
                                            <td>
                                                <c:out value="${room.roomNumber}" />
                                            </td>
                                            <td>
                                                <c:out value="${room.floor}" />
                                            </td>
                                            <td>
                                                
                                                <spring:url value="/booking/book/{roomId}" var="bookingUrl">
                                                    <spring:param name="roomId" value="${room.id}"/> 
                                                </spring:url>
                                                <c:set var="bookingCount" value="${bookingMap[room.roomNumber]}"/>
                                                <c:if test="${bookingCount eq 0}">
                                                    <a href="${fn:escapeXml(bookingUrl)}"><button class="btn btn-success">Reservar</button></a>
                                                </c:if>
                                                <c:if test="${bookingCount gt 0}">
                                                    <button class="btn btn-success" disabled>Reservado</button>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </petclinic:layout>