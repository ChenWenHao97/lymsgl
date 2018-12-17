package com.hepangda.controller;

import com.hepangda.model.dao.DAOFactory;
import com.hepangda.model.idao.IUserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/delete")
public class UserDeleteController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int uid = Integer.valueOf(req.getParameter("uid"));
        IUserDAO ido = DAOFactory.createUserDAO();
        ido.delete(uid);
    }
}
