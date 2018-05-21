package com.jnf.wms.toastgrid.service;

public class TableVO {

    private String tb_name;
    private String tb_date;
    private String tb_amt;
    private String tb_flag;
    private String perPage;
    private String Page;


    public String getPerPage() {
        return perPage;
    }

    public void setPerPage(String perPage) {
        this.perPage = perPage;
    }

    public String getPage() {
        return Page;
    }

    public void setPage(String page) {
        Page = page;
    }

    public String getTb_name() {
        return tb_name;
    }

    public void setTb_name(String tb_name) {
        this.tb_name = tb_name;
    }

    public String getTb_date() {
        return tb_date;
    }

    public void setTb_date(String tb_date) {
        this.tb_date = tb_date;
    }

    public String getTb_amt() {
        return tb_amt;
    }

    public void setTb_amt(String tb_amt) {
        this.tb_amt = tb_amt;
    }

    public String getTb_flag() {
        return tb_flag;
    }

    public void setTb_flag(String tb_flag) {
        this.tb_flag = tb_flag;
    }
}
