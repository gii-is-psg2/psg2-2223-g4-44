<%@ page session="false" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                        <%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

                            <petclinic:layout pageName="vets">

                                <h2>
                                    <c:if test="${vet['new']}">New </c:if> Vet
                                </h2>

                                <form:form modelAttribute="vet" class="form-horizontal" id="add-vet-form">
                                    <div class="form-group has-feedback">
                                        <petclinic:inputField label="Name" name="firstName" />
                                        <petclinic:inputField label="Last Name" name="lastName" />
                                       
                                    <div class="controls">
                                        <c:if test="${specialties != null}">
                                            <c:forEach items="${specialties}" var="specialty">
                                                
                                                <c:set var="isChecked" value="" />
                                                <c:forEach items="${vet.getSpecialties()}" var="vetSpecialty">
                                                    <c:if test="${specialty.getId() == vetSpecialty.getId()}">
                                                        <c:set var="isChecked" value=" checked" />
                                                    </c:if>
                                                </c:forEach>
                                                
                                                <label>
                                                    <input type="checkbox" name="specialties" value="${specialty.id}" ${isChecked} />
                                                    <c:out value="${specialty.name}" />
                                                </label>
                                                
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                  
                              </div>
                                                             
                                        



                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <c:choose>
                                                <c:when test="${vet['new']}">
                                                    <button class="btn btn-default" type="submit">Add Vet</button>
                                                </c:when>
                                                <c:otherwise>
                                                    <button class="btn btn-default" type="submit">Update Vet</button>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </form:form>
                            </petclinic:layout>