package com.hepangda.model.vo;

import com.hepangda.annotations.ReqeustParam;

public class CreateUserVO {
    @ReqeustParam
    private String nickname;

    @ReqeustParam
    private String phonenumber;

    @ReqeustParam
    private String password;

    @ReqeustParam
    private int type;

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

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

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
