package com.hepangda.model.dao;

import com.hepangda.model.idao.IRealAuthDAO;
import com.hepangda.model.vo.RealAuthVO;
import com.hepangda.utils.DBUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class RealAuthDAO implements IRealAuthDAO {
    @Override
    public ArrayList<RealAuthVO> get(int page, int pageby) {
        return BaseDAO.pageGet(page, pageby,
                "SELECT RealnameAuth.*, User.username FROM RealnameAuth, User WHERE RealnameAuth.uid=User.uid limit ?,?",
                RealAuthVO.class);
    }

    @Override
    public int getCount() {
        int ret = 0;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            stmt = conn.prepareStatement("SELECT COUNT(raid) cnt FROM RealnameAuth;");

            rs = stmt.executeQuery();
            while (rs.next()) {
                ret = rs.getInt("cnt");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtils.release(conn, stmt, rs);
        }
        return ret;
    }

    @Override
    public void pass(int id) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement stmt = conn.prepareStatement("UPDATE User INNER JOIN(SELECT uid, realname, idnumber FROM RealnameAuth WHERE uid=?) c ON User.uid=c.uid SET User.realname=c.realname, User.idnumber=c.idnumber;");
            stmt.setInt(1, id);
            DBUtils.doUpdate(conn, stmt);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        fail(id);
    }

    @Override
    public void fail(int id) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM RealnameAuth WHERE uid=?;");
            stmt.setInt(1, id);
            DBUtils.doUpdate(conn, stmt);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
