<%--
  Created by IntelliJ IDEA.
  User: Hacke
  Date: 16-11-2024
  Time: 05:11 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
<div class="snippet-container shadow p-3 mb-5 bg-body rounded">
  <form action="${pageContext.request.contextPath}/nhan-vien/update" method="post" class="container mt-md-4 shadow p-3 mb-5 bg-body rounded">
    <div class="form-group">
      <label>ID</label>
      <input type="text" name="id" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.id}" readonly>
    </div>
    <div class="form-group">
      <label>Ma</label>
      <input type="text" name="ma" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.ma}">
    </div>
<%--    <div class="form-group">--%>
<%--      <label>Ho</label>--%>
<%--      <input type="text" name="ho" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.ho}">--%>
<%--    </div>--%>
    <div class="form-group">
      <label>Ten</label>
      <input type="text" name="ten" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.ten}">
    </div>
<%--    <div class="form-group">--%>
<%--      <label>Ten dem</label>--%>
<%--      <input type="text" name="tenDem" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.tenDem}">--%>
<%--    </div>--%>
    <div class="form-group">
      <label>Gioi tinh</label>
<%--      <input type="text" name="gioiTinh" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.gioiTinh}">--%>
        <br>
        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="gioiTinh" value="Nam" ${nhanVien.gioiTinh == "Nam" ? "checked":""}/>
            <label class="form-check-label" >Nam</label>
        </div>

        <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="gioiTinh" value="Nữ" ${nhanVien.gioiTinh == "Nữ" ? "checked":""}/>
            <label class="form-check-label">Nữ</label>
        </div>
    </div>
    <div class="form-group">
      <label>Dia chi</label>
      <input type="text" name="diaChi" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.diaChi}">
    </div>
<%--    <div class="form-group">--%>
<%--      <label>SDT</label>--%>
<%--      <input type="text" name="sdt" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.sdt}">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--      <label>Mat khau</label>--%>
<%--      <input type="text" name="matKhau" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.matKhau}">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--      <label>Trang thai</label>--%>
<%--      <input type="text" name="trangThai" class="form-control" placeholder="" aria-describedby="helpId" value="${nhanVien.trangThai}">--%>
<%--    </div>--%>
    <button type="submit" class="btn btn-primary mt-md-2" onclick="confirm('Are you sure?')">Update</button>
  </form>
</div>
</body>
</html>
