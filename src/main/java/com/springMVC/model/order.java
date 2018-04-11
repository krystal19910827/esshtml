package com.springMVC.model;

/**
 * Created by lenovo on 2018/2/22.
 */
public class order {
    public String order4G;
    public String outorder;
    public String phonenum;
    public String tnsselect;
    public void setoutorder(String outorder) {
        this.outorder = outorder;
    }
    public void setorder4G(String order4G) {
        this.order4G = order4G;
    }
    public String getoutorder(String outorder) {
        return  outorder;
    }
    public String getorder4G(String order4G) {
        return order4G;
    }

    public void setphonenum(String phonenum) {
        this.phonenum = phonenum;
    }
    public String getphonenum(String phonenum) {
        return phonenum;
    }

    public void settnsselect(String tnsselect) {
        this.tnsselect = tnsselect;
    }
    public String gettnsselect(String tnsselect) {
        return tnsselect;
    }
}
