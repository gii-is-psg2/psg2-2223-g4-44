<%@ page session="false" trimDirectiveWhitespaces="true" %>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
                        <%@ taglib prefix="petclinic" tagdir="/WEB-INF/tags" %>

                        

                            <petclinic:layout pageName="booking">
                                <body style="background: #F5CBA7"> 

                                <jsp:attribute name="customScript">
                                    <script>
                                        $(function () {
                                            $("#startDate").datepicker({ dateFormat: "yy/mm/dd" });
                                            $("#endDate").datepicker({ dateFormat: "yy/mm/dd" });
                                        });
                                    </script>
                                </jsp:attribute>
                                <jsp:body>
                                    <form:form modelAttribute="booking" class="form-horizontal" id="add-owner-form">
                                        <div class="form-group has-feedback">
                                            <petclinic:inputField label="Fecha de Inicio" name="startDate" />
                                            <petclinic:inputField label="Fecha de Fin" name="endDate" />
                                            <petclinic:selectField label="Mascota" name="pet" names="${pets}" size="1"/>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-2 col-sm-10">
                                                <button class="btn btn-default" type="submit">Reservar</button>
                                            </div>
                                        </div>
                                    </form:form>
                                </jsp:body>
                                </body>
                            </petclinic:layout>