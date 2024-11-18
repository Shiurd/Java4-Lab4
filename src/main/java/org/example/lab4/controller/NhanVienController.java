package org.example.lab4.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import lombok.SneakyThrows;
import org.apache.commons.beanutils.BeanUtils;
import org.example.lab4.entity.NhanVien;
import org.example.lab4.repository.NhanVienDAO;

import java.io.IOException;

@WebServlet(name = "NhanVienController", value = {
        "/",
        "/nhan-vien/hien-thi",
        "/nhan-vien/add",
        "/nhan-vien/detail",
        "/nhan-vien/delete",
        "/nhan-vien/update"
})
public class NhanVienController extends HttpServlet {
    private final NhanVienDAO nhanVienDAO = new NhanVienDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();

        if (uri.endsWith("/nhan-vien/hien-thi")) {
            request.setAttribute("nhanViens", nhanVienDAO.findAll());
            request.getRequestDispatcher("/views/nhan-vien/hien-thi.jsp").forward(request, response);
        } else if (uri.endsWith("/nhan-vien/detail")) {
            int id = Integer.parseInt(request.getParameter("id"));
            request.setAttribute("nhanVien", nhanVienDAO.findById(id));
            request.getRequestDispatcher("/views/nhan-vien/detail.jsp").forward(request, response);
        } else if (uri.endsWith("/nhan-vien/delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            nhanVienDAO.delete(nhanVienDAO.findById(id));
            response.sendRedirect("/nhan-vien/hien-thi");
        }
    }

    @Override
    @SneakyThrows
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String uri = request.getRequestURI();

        if (uri.endsWith("/nhan-vien/add")) {
            NhanVien nhanVien = new NhanVien();
            BeanUtils.populate(nhanVien, request.getParameterMap());
            nhanVienDAO.save(nhanVien);
            response.sendRedirect("/nhan-vien/hien-thi");
        } else if (uri.endsWith("/nhan-vien/update")) {
            NhanVien nhanVien = new NhanVien();
            BeanUtils.populate(nhanVien, request.getParameterMap());
            nhanVienDAO.update(nhanVien);
            response.sendRedirect("/nhan-vien/hien-thi");
        }
    }

}