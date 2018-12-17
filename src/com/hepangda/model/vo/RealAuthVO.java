package com.hepangda.model.vo;

import com.hepangda.annotations.DatabaseKey;

public class RealAuthVO {
    @DatabaseKey
    private long raid;

    @DatabaseKey
    private long uid;

    @DatabaseKey
    private String username;

    @DatabaseKey
    private String realname;

    @DatabaseKey
    private String idnumber;

    public long getUid() {
        return uid;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }

    public long getRaid() {
        return raid;
    }

    public void setRaid(long raid) {
        this.raid = raid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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
}