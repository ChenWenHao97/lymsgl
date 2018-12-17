package com.hepangda.model.vo;

import com.hepangda.annotations.DatabaseKey;
import com.hepangda.annotations.ReqeustParam;

public class UserMessageVO {
    @DatabaseKey
    @ReqeustParam
    private long uid;

    @DatabaseKey
    @ReqeustParam
    private String username;

    @DatabaseKey
    @ReqeustParam
    private String phonenumber;

    @DatabaseKey
    @ReqeustParam
    private String password;

    @DatabaseKey
    @ReqeustParam
    private int status;

    @DatabaseKey
    @ReqeustParam
    private String realname;

    @DatabaseKey
    @ReqeustParam
    private String idnumber;

    @DatabaseKey
    @ReqeustParam
    private boolean verified;

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getRealname() {
        return realname;
    }

    public void setRealname(String realname) {
        this.realname = realname;
    }

    public String getIdnumber() {
        return idnumber;
    }

    public void setIdnumber(String idnumber) {
        this.idnumber = idnumber;
    }

    public boolean isVerified() {
        return verified;
    }

    public void setVerified(boolean verified) {
        this.verified = verified;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append("\"uid\":")
                .append(uid);
        sb.append(",\"username\":\"")
                .append(username).append('\"');
        sb.append(",\"phonenumber\":\"")
                .append(phonenumber).append('\"');
        sb.append(",\"password\":\"")
                .append(password).append('\"');
        sb.append(",\"status\":")
                .append(status);
        sb.append(",\"realname\":\"")
                .append(realname).append('\"');
        sb.append(",\"idnumber\":\"")
                .append(idnumber).append('\"');
        sb.append(",\"verified\":")
                .append(verified);
        sb.append('}');
        return sb.toString();
    }
}
