<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Hacke
  Date: 16-11-2024
  Time: 04:48 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
<div class="container mt-md-4">
    <form action="${pageContext.request.contextPath}/nhan-vien/add" method="post" class="container mt-md-4 shadow p-3 mb-5 bg-body rounded">
                <div class="form-group">
                    <label>ID</label>
                    <input type="text" name="id" class="form-control" placeholder="" aria-describedby="helpId">
                </div>
                <div class="form-group">
                    <label>Ma</label>
                    <input type="text" name="ma" class="form-control" placeholder="" aria-describedby="helpId">
                </div>
<%--                <div class="form-group">--%>
<%--                    <label>Ho</label>--%>
<%--                    <input type="text" name="ho" class="form-control" placeholder="" aria-describedby="helpId">--%>
<%--                </div>--%>
                <div class="form-group">
                    <label>Ten</label>
                    <input type="text" name="ten" class="form-control" placeholder="" aria-describedby="helpId">
                </div>
<%--                <div class="form-group">--%>
<%--                    <label>Ten dem</label>--%>
<%--                    <input type="text" name="tenDem" class="form-control" placeholder="" aria-describedby="helpId">--%>
<%--                </div>--%>
                <div class="form-group">
                    <label>Gioi tinh</label>
<%--                    <input type="text" name="gioiTinh" class="form-control" placeholder="" aria-describedby="helpId">--%>
                    <br>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gioiTinh" value="Nam"/>
                        <label class="form-check-label" >Nam</label>
                    </div>

                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="gioiTinh" value="Nữ" />
                        <label class="form-check-label">Nữ</label>
                    </div>

                </div>
                <div class="form-group">
                    <label>Dia chi</label>
                    <input type="text" name="diaChi" class="form-control" placeholder="" aria-describedby="helpId">
                </div>
<%--                <div class="form-group">--%>
<%--                    <label>SDT</label>--%>
<%--                    <input type="text" name="sdt" class="form-control" placeholder="" aria-describedby="helpId">--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label>Mat khau</label>--%>
<%--                    <input type="text" name="matKhau" class="form-control" placeholder="" aria-describedby="helpId">--%>
<%--                </div>--%>
<%--                <div class="form-group">--%>
<%--                    <label>Trang thai</label>--%>
<%--                    <input type="text" name="trangThai" class="form-control" placeholder="" aria-describedby="helpId">--%>
<%--                </div>--%>
        <button type="submit" class="btn btn-primary mt-md-2" onclick="confirm('Are you sure?')">Add</button>
    </form>

    <table class="table table-hover shadow p-3 mb-5 bg-body rounded">
        <thead>
        <tr>
            <th>Id</th>
            <th>Ma</th>
            <th>Ten</th>
<%--            <th>Ten dem</th>--%>
<%--            <th>Ho</th>--%>
            <th>Gioi tinh</th>
            <th>Dia chi</th>
<%--            <th>SDT</th>--%>
<%--            <th>Mat khau</th>--%>
<%--            <th>Trang thai</th>--%>
            <th>Function</th>
        </tr>
        </thead>
        <tbody>
        <jsp:useBean id="nhanViens" scope="request" type="java.util.List"/>
        <c:forEach items="${nhanViens}" var="nv">
            <tr>
                <td scope="row">${nv.id}</td>
                <td>${nv.ma}</td>
                <td>${nv.ten}</td>
<%--                <td>${nv.tenDem}</td>--%>
<%--                <td>${nv.ho}</td>--%>
                <td>${nv.gioiTinh}</td>
                <td>${nv.diaChi}</td>
<%--                <td>${nv.sdt}</td>--%>
<%--                <td>${nv.matKhau}</td>--%>
<%--                <td>${nv.trangThai}</td>--%>
                <td>
                    <button class="btn"><a
                            href="${pageContext.request.contextPath}/nhan-vien/delete?id=${nv.id}" class="btn btn-danger" onclick="confirm('Are you sure?')">Delete</a>
                    </button>
                    <button class="btn"><a
                            href="${pageContext.request.contextPath}/nhan-vien/detail?id=${nv.id}" class="btn btn-primary">Update</a>
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
