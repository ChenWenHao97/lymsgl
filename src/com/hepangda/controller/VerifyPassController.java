package com.hepangda.controller;

import com.hepangda.model.dao.DAOFactory;
import com.hepangda.model.idao.IRealAuthDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/verify/pass")
public class VerifyPassController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.valueOf(req.getParameter("uid"));
        IRealAuthDAO ido = DAOFactory.createRealAuthDAO();
        ido.pass(id);
    }
}
