package com.demo.dao;

import com.demo.bean.*;
import com.demo.utils.JdbcUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDAo {
    public Admin Login(String name, String password){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        Admin admin = null;

        try {
            connection = JdbcUtils.getConn();
            String sql = "select * from admin where name=? and password=?";
            preparedStatement  = connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,password);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                admin = new Admin();
                admin.setName(resultSet.getString("name"));
                admin.setPassword(resultSet.getString("password"));
                System.out.println("登录成功");
            }else {
                System.out.println("登录失败");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JdbcUtils.close(connection,preparedStatement,resultSet);
        }
        return admin;
    }

    public void addAdmin(Admin admin){
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            connection = JdbcUtils.getConn();
            String sql = "insert into Admin(name,password,id,sex,telephone,email) values (?,?,?,?,?,?)";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,admin.getName());
            preparedStatement.setString(2,admin.getPassword());
            preparedStatement.setString(3,admin.getId());
            preparedStatement.setString(4,admin.getSex());
            preparedStatement.setString(5,admin.getTelephone());
            preparedStatement.setString(6,admin.getEmail());

            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            JdbcUtils.close(connection,preparedStatement);
        }
    }

    public boolean isExist(String username){
        Connection connection = null;
        String sql = "select * from admin where name=?";
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = JdbcUtils.getConn();
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,username);
            resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return true;
    }


    public List<String> showBook(){//剩余各种书的信息
        List<String> list = new ArrayList<String>();
        int i = 0;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = JdbcUtils.getConn();
            String sql = "select * from book";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                String message = "书名：" + resultSet.getString("book_name")
                        + "<--->剩余数量：" + resultSet.getInt("book_num")
                        + "<--->作者为：" + resultSet.getString("book_writer")
                        + "<--->书的价格为：" + resultSet.getInt("book_price")
                        + "<--->出版时间为：" + resultSet.getString("publish_time")
                        + "<--->出版社为：" + resultSet.getString("publish_house");
                list.add(message);
//                System.out.println(message);
                //System.out.println();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JdbcUtils.close(connection,preparedStatement,resultSet);
        }
        return list;
    }
    public List<User> showUser(){
        List<User> list = new ArrayList<User>();
        int i = 0;
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = JdbcUtils.getConn();
            String sql = "select * from reader";
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                User user = new User();
                user.setName(resultSet.getString(1));
                user.setPassword(resultSet.getString(2));
                user.setId(resultSet.getString(3));
                user.setSex(resultSet.getString(4));
                user.setTelephone(resultSet.getString(5));
                user.setEmail(resultSet.getString(6));
                list.add(user);
//                System.out.println(message);
                //System.out.println();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            JdbcUtils.close(connection,preparedStatement,resultSet);
        }
        return list;
    }
}
