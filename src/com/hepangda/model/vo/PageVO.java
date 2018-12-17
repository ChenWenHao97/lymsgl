package com.hepangda.model.vo;

import com.hepangda.annotations.ReqeustParam;

public class PageVO {
    @ReqeustParam
    private int page;

    @ReqeustParam
    private int pageby;

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
}
