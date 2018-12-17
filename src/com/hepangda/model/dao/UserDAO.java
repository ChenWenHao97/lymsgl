package com.hepangda.model.dao;

import com.hepangda.model.idao.IUserDAO;
import com.hepangda.model.vo.CreateUserVO;
import com.hepangda.model.vo.UserMessageVO;
import com.hepangda.utils.DBUtils;
import com.hepangda.utils.ObjectGenerator;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;

public class UserDAO implements IUserDAO {
    @Override
    public boolean create(CreateUserVO vo) {
        Connection conn = null;
        PreparedStatement stmt = null;
        boolean ret = false;
        try {
            conn = DBUtils.getConnection();
            stmt = conn.prepareStatement(
                    "INSERT INTO User VALUES (DEFAULT, ?, ?, ?, ?, DEFAULT, DEFAULT);"
            );

            int i = 0;
            stmt.setString(++i, vo.getNickname());
            stmt.setString(++i, vo.getPhonenumber());
            stmt.setString(++i, vo.getPassword());
            stmt.setInt(++i, vo.getType());

            ret = stmt.executeUpdate() == 1;
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtils.release(conn, stmt, null);
        }

        return ret;
    }

    @Override
    public ArrayList<UserMessageVO> get(int page, int pageby) {
        return BaseDAO.pageGet(page, pageby, "SELECT * from UserView LIMIT ?, ?;", UserMessageVO.class);
    }

    @Override
    public void delete(int uid) {
        try {
            Connection conn = DBUtils.getConnection();
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM User WHERE uid=?;");
            stmt.setInt(1, uid);
            DBUtils.doUpdate(conn, stmt);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void modify(UserMessageVO vo) {
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DBUtils.getConnection();
            stmt = conn.prepareStatement("UPDATE User SET username=?, phonenumber=?, password=?, status=?, realname=?, idnumber=? WHERE uid=?;");

            int i = 0;
            stmt.setString(++i, vo.getUsername());
            stmt.setString(++i, vo.getPhonenumber());
            stmt.setString(++i, vo.getPassword());
            stmt.setInt(++i, vo.getStatus());
            if ("null".equals(vo.getRealname())) {
                stmt.setNull(++i, Types.VARCHAR);
            } else {
                stmt.setString(++i, vo.getRealname());
            }

            if ("null".equals(vo.getIdnumber())) {
                stmt.setNull(++i, Types.CHAR);
            } else {
                stmt.setString(++i, vo.getIdnumber());
            }
            stmt.setLong(++i, vo.getUid());
            stmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtils.release(conn, stmt, null);
        }
    }

    @Override
    public ArrayList<UserMessageVO> getByKeyword(int page, int pageby, String keyword) {
        ArrayList<UserMessageVO> ret = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            stmt = conn.prepareStatement(
                    "SELECT * FROM UserView WHERE username LIKE ? LIMIT ?, ?;"
            );

            int i = 0;
            stmt.setString(++i, "%" + keyword + "%");
            stmt.setInt(++i, (page - 1) * pageby);
            stmt.setInt(++i, pageby);

            rs = stmt.executeQuery();
            while (rs.next()) {
                ret.add(ObjectGenerator.fromResultSet(rs, UserMessageVO.class));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtils.release(conn, stmt, rs);
        }
        return ret;
    }

    @Override
    public int getCountByKeyword(String keyword) {
        int ret = 0;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            stmt = conn.prepareStatement("SELECT COUNT(uid) cnt FROM User WHERE username LIKE ?;");
            stmt.setString(1, "%" + keyword + "%");
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
}
