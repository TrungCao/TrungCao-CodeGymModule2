<%--
  Created by IntelliJ IDEA.
  User: TrungArs
  Date: 7/16/2019
  Time: 9:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>javaguides.net</title>
    <link href="<c:url value="/resources/css/bootstrap.min.css" />"
          rel="stylesheet">
    <%@ page isELIgnored="false" %>
    <script src="<c:url value="/resources/js/jquery-1.11.1.min.js" />"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
</head>
<body>
<div class="container">
    <div class="col-md-offset-1 col-md-10">
        <h3 class="text-center">Spring MVC 5 + Spring Data JPA 2 + JSP +
            MySQL Example - Blog Management</h3>
        <hr/>

        <input type="button" value="Add Blog"
               onclick="window.location.href='showForm'; return false;"
               class="btn btn-primary"/> <br/>
        <br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Blog List</div>
            </div>
            <div class="panel-body">
                <table class="table table-striped table-bordered">
                    <tr>
                        <th>Topic</th>
                        <th>Content</th>
                        <th>Action</th>
                    </tr>

                    <!-- loop over and print our customers -->
                    <c:forEach var="tempBlog" items="${blogs}">

                        <!-- construct an "update" link with customer id -->
                        <c:url var="updateLink" value="/blog/updateForm">
                            <c:param name="blogId" value="${tempBlog.id}"/>
                        </c:url>

                        <!-- construct an "delete" link with customer id -->
                        <c:url var="deleteLink" value="/blog/delete">
                            <c:param name="blogId" value="${tempBlog.id}"/>
                        </c:url>

                        <tr>
                            <td>${tempBlog.Topic}</td>
                            <td>${tempBlog.Content}</td>

                            <td>
                                <!-- display the update link --> <a href="${updateLink}">Update</a>
                                | <a href="${deleteLink}"
                                     onclick="if (!(confirm('Are you sure you want to delete this blog?'))) return false">Delete</a>
                            </td>

                        </tr>

                    </c:forEach>

                </table>

            </div>
        </div>
    </div>

</div>

</body>

</html>