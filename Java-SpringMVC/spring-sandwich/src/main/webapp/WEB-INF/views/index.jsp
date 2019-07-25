
<%--
  Created by IntelliJ IDEA.
  User: TrungArs
  Date: 7/10/2019
  Time: 4:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Sandwich Condiments</title>
  </head>
  <body>
    <h1>Sandwich Condiments</h1>
    <form:form action="/save" method="post">
      <input type="checkbox" name="condiments" value="Lettuce" >Lettuce
      <input type="checkbox" name="condiments" value="Tomato" >Tomato
      <input type="checkbox" name="condiments" value="Mystard">Mystard
      <input type="checkbox" name="condiments" value="Spouts">Sprouts<br>
      <hr/>
      <input type="submit" value="Submit">
    </form:form>
  </body>
</html>
