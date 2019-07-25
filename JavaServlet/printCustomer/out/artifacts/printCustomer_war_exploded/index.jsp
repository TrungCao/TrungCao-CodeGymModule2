<%--
  Created by IntelliJ IDEA.
  User: TrungArs
  Date: 7/5/2019
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>printCustomer</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" >
    <h2 style = "text-align: center">Danh sách khách hàng</h2>
    <table class="table table-hover" style="text-align: center">
        <thead>
        <tr>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        </thead>

        <tr>
            <td>Mai Văn Hoàn</td>
            <td>1999-1-21</td>
            <td>Hà Nội</td>
            <td><img class="img-thumbnail col-lg-2"
                    src="https://tincongnghe.net.vn/wp-content/uploads/2017/10/Nhung-nguyen-lieu-de-co-mot-buc-anh-chan-dung-dep-5.jpg"
                    ></td>
        </tr>
        <tr>
            <td>Cao Tất Trung</td>
            <td>1996-09-12</td>
            <td>Nghệ An</td>
            <td><img  class="img-thumbnail col-lg-2"
                    src="https://scontent.fdad1-1.fna.fbcdn.net/v/t1.0-1/p480x480/16143033_1096263573853526_2330817182311316406_n.jpg?_nc_cat=103&_nc_oc=AQnnLV2ADbLI6t1IkRjRfNva55pXAqbCZpWIeUcPLDpCZb229wcTKj9wtcRoPYrsfHg&_nc_ht=scontent.fdad1-1.fna&oh=cabf63182dc94287b8844f58a24c95ee&oe=5DAE6011"></td>
        </tr>
        <tr>
            <td>Cristiano Rona</td>
            <td>1993-03-12</td>
            <td>Hà Tĩnh</td>
            <td><img class="img-thumbnail col-lg-2"
                    src="https://cauthu.com.vn/wp-content/uploads/2018/10/ronaldo-buff-tinh-th%E1%BA%A7n.jpg"></td>
        </tr>
        <tr>
    </table>
</div>

<br>
</body>
</html>
