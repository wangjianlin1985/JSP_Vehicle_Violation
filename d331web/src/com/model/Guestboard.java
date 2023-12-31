package com.model;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @author wgh
 * @version 2.0
 */

public class Guestboard {
    private int gid;      //讨论ID
    private String title;     //讨论标题
    private String guest;     //讨论者
    private String gtime;     //讨论时间
    private String content;     //讨论内容
    private int gflag;     //标记是否已经回复，值1表示已经回复，0为未回复
    private String rtime;     //回复时间
    private String recontent;     //回复内容
    private int mid; 
    private int pllx; 
    private String uid; 
    private String re_uid; 
    
    public String getRe_uid() {
		return re_uid;
	}
	public void setRe_uid(String reUid) {
		re_uid = reUid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getPllx() {
		return pllx;
	}
	public void setPllx(int pllx) {
		this.pllx = pllx;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public Guestboard() {  //构造方法
    }
    public int getGid() {  //获取讨论ID
        return gid;
    }
    public void setGid(int gid) {   //设置讨论ID
        this.gid = gid;
    }
    public String getTitle() {  //获取讨论标题
        return title;
    }
    public void setTitle(String title) {   //设置讨论标题
        this.title = title;
    }
    public String getGuest() {  //获取讨论者
        return guest;
    }
    public void setGuest(String guest) {   //设置讨论者
        this.guest = guest;
    }
    public String getGtime() {  //获取讨论时间
        return gtime;
    }
    public void setGtime(String gtime) {  //设置讨论时间
        this.gtime = gtime;
    }
    public String getContent() {  //获取讨论内容
        return content;
    }
    public void setContent(String content) {  //设置讨论内容
        this.content = content;
    }
    public int getGflag() {  //获取是否回复标记
        return gflag;
    }
    public void setGflag(int gflag) {   //设置是否回复标记
        this.gflag = gflag;
    }
    public String getRtime() {//获取回复时间
        return rtime;
    }
    public void setRtime(String rtime) {//设置回复时间
        this.rtime = rtime;
    }
    public String getRecontent() { //获取回复内容
        return recontent;
    }
    public void setRecontent(String recontent) {  //设置回复内容
        this.recontent = recontent;
    }
}
