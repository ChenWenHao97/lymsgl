package com.hepangda.controller;

import com.hepangda.model.dao.DAOFactory;
import com.hepangda.model.idao.IRealAuthDAO;
import com.hepangda.model.vo.PageVO;
import com.hepangda.utils.ObjectGenerator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/verify/get")
public class VerifyPagerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PageVO pvo = ObjectGenerator.fromRequest(req, PageVO.class);
        IRealAuthDAO ido = DAOFactory.createRealAuthDAO();

        int page = 1;
        if (pvo != null) {
            page = pvo.getPage();
            req.setAttribute("VfyList", ido.get(pvo.getPage(), pvo.getPageby()));
        }

        req.getRequestDispatcher("/manager.jsp?block=user&item=verify&page=" + page).forward(req, resp);
    }
}
