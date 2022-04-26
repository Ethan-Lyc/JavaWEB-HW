package com.demo.service;

import com.demo.bean.Admin;
import com.demo.bean.User;
import com.demo.dao.AdminDAo;
import com.demo.dao.UserDAo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginAdminServlet", urlPatterns = "/LoginAdminServlet")
public class LoginAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        //PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        AdminDAo adminDAo= new AdminDAo();
        Admin admin = adminDAo.Login(name,password);
        if(admin != null){
            request.getRequestDispatcher("/WEB-INF/adminsuccess.jsp").forward(request,response);
        }else {
            response.sendRedirect("register.jsp");
        }
    }
}
