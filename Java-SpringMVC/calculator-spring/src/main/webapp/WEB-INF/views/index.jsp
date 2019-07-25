<%--
  Created by IntelliJ IDEA.
  User: TrungArs
  Date: 7/11/2019
  Time: 8:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Calculator</title>
  </head>
  <body>
  <h1>Calculator</h1>
  <table>
    <form:form action="/calculate" method="post">
      <tr>
        <td>
          <input type="text" name="number1">
          <input type="text" name="number2">
        </td>
      </tr>
      <tr>
        <td>
          <button type="submit" name="operand" value="+">Addition(+)</button>
          <button type="submit" name="operand" value="-">Subtraction(-)</button>
          <button type="submit" name="operand" value="*">Mutiplication(X)</button>
          <button type="submit" name="operand" value="/">Division(/)</button>
        </td>
      </tr>
  </table>
   Result: ${result}
    </form:form>
  </body>
</html>
