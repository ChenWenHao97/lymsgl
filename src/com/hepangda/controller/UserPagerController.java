package com.hepangda.controller;

import com.hepangda.model.dao.DAOFactory;
import com.hepangda.model.idao.IRealAuthDAO;
import com.hepangda.model.idao.IUserDAO;
import com.hepangda.model.vo.PageKeywordVO;
import com.hepangda.model.vo.PageVO;
import com.hepangda.utils.ObjectGenerator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/get")
public class UserPagerController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PageKeywordVO pvo = ObjectGenerator.fromRequest(req, PageKeywordVO.class);
        IUserDAO ido = DAOFactory.createUserDAO();

        int page = 1;
        String keyword = "";
        if (pvo != null) {
            page = pvo.getPage();
            keyword = pvo.getKeyword();
            req.setAttribute("List", ido.getByKeyword(pvo.getPage(), pvo.getPageby(), pvo.getKeyword()));
        }

        req.getRequestDispatcher("/manager.jsp?block=user&item=list&page=" + page + "&keyword=" + keyword).forward(req, resp);
    }
}
