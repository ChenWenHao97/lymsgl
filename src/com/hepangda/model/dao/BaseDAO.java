package com.hepangda.model.dao;

import com.hepangda.utils.DBUtils;
import com.hepangda.utils.ObjectGenerator;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BaseDAO {
    public static <T> ArrayList<T> pageGet(int page, int pageby, String sql, Class<T> claz) {
        ArrayList<T> ret = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            stmt = conn.prepareStatement(sql);

            int i = 0;
            stmt.setInt(++i, (page - 1) * pageby);
            stmt.setInt(++i, pageby);

            rs = stmt.executeQuery();
            while (rs.next()) {
                ret.add(ObjectGenerator.fromResultSet(rs, claz));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            DBUtils.release(conn, stmt, rs);
        }
        return ret;
    }
}
