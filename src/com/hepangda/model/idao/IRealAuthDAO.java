package com.hepangda.model.idao;

import com.hepangda.model.vo.RealAuthVO;

import java.util.ArrayList;

public interface IRealAuthDAO {
    ArrayList<RealAuthVO> get(int page, int pageby);
    int getCount();
    void pass(int id);
    void fail(int id);
}
