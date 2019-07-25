<%--
  Created by IntelliJ IDEA.
  User: TrungArs
  Date: 7/4/2019
  Time: 4:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<body>
<div id="content">
    <h1>Product Discount Calculator</h1>
    <form method="post" action="/discount">
        <label>Product Description:</label><br/>
        <input type="text" name="description"/><br/>
        <label>List Price:</label><br/>
        <input type="text" name="price"/><br/>
        <label>Discount Percent:</label><br/>
        <input type="text" name="discount_percent"/>(%)<br/>
        <label>&nbsp;</label><br>
        <input type="submit" value="Calculate Discount"/>
    </form>
</div>
</body>
</html>

