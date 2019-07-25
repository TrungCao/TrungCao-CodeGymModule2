<%--
  Created by IntelliJ IDEA.
  User: TrungArs
  Date: 7/10/2019
  Time: 4:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>result</title>
</head>
<body>
<h1>Condiment :</h1>
<c:forEach items="${condiments}" var="condiment">
    ${condiment}
</c:forEach>

</body>
</html>
