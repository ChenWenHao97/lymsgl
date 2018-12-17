package com.hepangda.utils;

import com.hepangda.annotations.DatabaseKey;
import com.hepangda.annotations.ReqeustParam;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Field;
import java.sql.ResultSet;

public class ObjectGenerator {
    public static <T> T fromRequest(HttpServletRequest request, Class<T> claz) {
        try {
            T ret = claz.newInstance();

            Field[] fields = claz.getDeclaredFields();
            for (Field f : fields) {
                f.setAccessible(true);
                ReqeustParam rq = f.getAnnotation(ReqeustParam.class);
                if (rq == null) continue;

                if (f.getType() == int.class) {
                    f.setInt(ret, Integer.valueOf(request.getParameter(f.getName())));
                } else if (f.getType() == String.class) {
                    f.set(ret, request.getParameter(f.getName()));
                } else if (f.getType() == long.class) {
                    f.setLong(ret, Long.valueOf(request.getParameter(f.getName())));
                } else if (f.getType() == boolean.class) {
                    f.setBoolean(ret, Boolean.valueOf(request.getParameter(f.getName())));
                }
            }
            return ret;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public static <T> T fromResultSet(ResultSet rs, Class<T> claz) {
        try {
            T ret = claz.newInstance();

            Field[] fields = claz.getDeclaredFields();
            for (Field f : fields) {
                f.setAccessible(true);
                DatabaseKey dk = f.getAnnotation(DatabaseKey.class);
                if (dk == null) continue;

                if (f.getType() == int.class) {
                    f.setInt(ret, rs.getInt(f.getName()));
                } else if (f.getType() == long.class) {
                    f.setLong(ret, rs.getLong(f.getName()));
                } else if (f.getType() == String.class) {
                    f.set(ret, rs.getString(f.getName()));
                } else if (f.getType() == boolean.class) {
                    f.setBoolean(ret, rs.getInt(f.getName()) == 1);
                }
            }
            return ret;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
}
