<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : response
    Created on : 21/10/2022, 12:27:44 AM
    Author     : Michael
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="myBean" scope="session" class="co.edu.unipiloto.labjsp.NameHandler" />
        <jsp:setProperty name="myBean" property="name"/>
        <jsp:setProperty name="myBean" property="fechaN"/>
        <jsp:setProperty name="myBean" property="edad" value="{<%=myBean%>}"/>
        <jsp:setProperty name="myBean" property="hora"/>
        <h1>  
            <c:choose>
                <c:when test="${myBean.hora>=12 && myBean.hora<=18}">
                    Buenas tardes
                </c:when>
                <c:when test="${myBean.hora>=19 && myBean.hora<=23}"> 
                    Buenas noches
                </c:when>
                <c:otherwise>
                    Buenos dias
                </c:otherwise>
            </c:choose>
            <jsp:getProperty name="myBean" property="name" />
        Bienvenido al curso de metodos, tu fecha de nacimiento es 
        <jsp:getProperty name="myBean" property="fechaN" /> 
        y tu edad es <jsp:getProperty name="myBean" property="edad" />
        
        </h1>
    </body>
</html>
