package com.demo.service;

import com.demo.bean.Book;
import com.demo.dao.BookDAo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BorrowBookServlet", urlPatterns = "/BorrowBookServlet")
public class BorrowBookServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String book_name = request.getParameter("book_name");
        BookDAo bookDAo = new BookDAo();
        Book book = bookDAo.retandborBook(book_name);
//        System.out.println("借阅《" + book_name +"》成功");
        int sum = bookDAo.update(book,-1);
        request.setAttribute("sum",sum);
//        PrintWriter printWriter = response.getWriter();
//        printWriter.write("借阅《" + book_name +"》成功");
        request.getRequestDispatcher("borrowSuccess.jsp").forward(request,response);
    }
}
