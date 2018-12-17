package com.hepangda.model.dao;

import com.hepangda.model.idao.IRealAuthDAO;
import com.hepangda.model.idao.IUserDAO;

public class DAOFactory {
    public static IUserDAO createUserDAO() {
        return new UserDAO();
    }

    public static IRealAuthDAO createRealAuthDAO() {
        return new RealAuthDAO();
    }
}
