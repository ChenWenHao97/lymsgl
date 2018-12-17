package com.hepangda.model.idao;

import com.hepangda.model.vo.CreateUserVO;
import com.hepangda.model.vo.UserMessageVO;

import java.util.ArrayList;

public interface IUserDAO {
    boolean create(CreateUserVO vo);
    ArrayList<UserMessageVO> get(int page, int pageby);
    ArrayList<UserMessageVO> getByKeyword(int page, int pageby, String keyword);
    void delete(int uid);
    void modify(UserMessageVO vo);
    int getCountByKeyword(String keyword);
}
