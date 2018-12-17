package com.hepangda.controller;

import com.hepangda.model.dao.DAOFactory;
import com.hepangda.model.idao.IUserDAO;
import com.hepangda.utils.ObjectGenerator;
import com.hepangda.model.vo.CreateUserVO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/create")
public class UserCreateController extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CreateUserVO cuvo = ObjectGenerator.fromRequest(req, CreateUserVO.class);
        IUserDAO ido = DAOFactory.createUserDAO();
        if (ido.create(cuvo)) {
            req.setAttribute("ok", true);
            req.setAttribute("result", "创建用户成功");
        } else {
            req.setAttribute("ok", false);
            req.setAttribute("result", "创建用户失败，数据类型不合法");
        }
        req.getRequestDispatcher("/manager.jsp?block=result").forward(req, resp);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendError(403);
    }
}
