package com.hepangda.model.vo;

import com.hepangda.annotations.ReqeustParam;

public class PageKeywordVO {
    @ReqeustParam
    private int page;

    @ReqeustParam
    private int pageby;

    @ReqeustParam
    private String keyword;

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public int getPageby() {
        return pageby;
    }

    public void setPageby(int pageby) {
        this.pageby = pageby;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
}
