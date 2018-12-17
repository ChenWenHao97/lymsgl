package com.hepangda.controller;

import com.hepangda.model.dao.DAOFactory;
import com.hepangda.model.idao.IUserDAO;
import com.hepangda.model.vo.UserMessageVO;
import com.hepangda.utils.ObjectGenerator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/modify")
public class UserModifyController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        UserMessageVO umvo = ObjectGenerator.fromRequest(req, UserMessageVO.class);
        IUserDAO ido = DAOFactory.createUserDAO();
        ido.modify(umvo);
    }
}
