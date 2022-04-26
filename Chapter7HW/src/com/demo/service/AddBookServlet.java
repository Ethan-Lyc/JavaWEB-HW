package com.demo.service;

import com.demo.bean.Book;
import com.demo.dao.BookDAo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddBookServlet" ,urlPatterns = "/AddBookServlet")
public class AddBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        int book_num = Integer.parseInt(request.getParameter("book_num"));
        String book_name = request.getParameter("book_name");
        String book_writer = request.getParameter("book_writer");
        String publish_time = request.getParameter("publish_time");
        int book_price = Integer.parseInt(request.getParameter("book_price"));
        String publish_house = request.getParameter("publish_house");
        Book book = new Book();
        book.setBook_writer(book_writer);
        book.setBook_price(book_price);
        book.setBook_num(book_num);
        book.setBook_name(book_name);
        book.setPublish_house(publish_house);
        book.setPublish_time(publish_time);
        BookDAo bookdao = new BookDAo();
        bookdao.addBook(book);
        request.getRequestDispatcher("/WEB-INF/adminsuccess.jsp").forward(request,response);
    }
}
