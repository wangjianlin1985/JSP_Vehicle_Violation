package com.model;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @author wgh
 * @version 2.0
 */

public class Lyb {
    private int gid;      //����ID
    private String title;     //���Ա���
    private String guest;     //������
    private String gtime;     //����ʱ��
    private String content;     //��������
    private int gflag;     //����Ƿ��Ѿ��ظ���ֵ1��ʾ�Ѿ��ظ���0Ϊδ�ظ�
    private String rtime;     //�ظ�ʱ��
    private String recontent;     //�ظ�����
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
	public Lyb() {  //���췽��
    }
    public int getGid() {  //��ȡ����ID
        return gid;
    }
    public void setGid(int gid) {   //��������ID
        this.gid = gid;
    }
    public String getTitle() {  //��ȡ���Ա���
        return title;
    }
    public void setTitle(String title) {   //�������Ա���
        this.title = title;
    }
    public String getGuest() {  //��ȡ������
        return guest;
    }
    public void setGuest(String guest) {   //����������
        this.guest = guest;
    }
    public String getGtime() {  //��ȡ����ʱ��
        return gtime;
    }
    public void setGtime(String gtime) {  //��������ʱ��
        this.gtime = gtime;
    }
    public String getContent() {  //��ȡ��������
        return content;
    }
    public void setContent(String content) {  //������������
        this.content = content;
    }
    public int getGflag() {  //��ȡ�Ƿ�ظ����
        return gflag;
    }
    public void setGflag(int gflag) {   //�����Ƿ�ظ����
        this.gflag = gflag;
    }
    public String getRtime() {//��ȡ�ظ�ʱ��
        return rtime;
    }
    public void setRtime(String rtime) {//���ûظ�ʱ��
        this.rtime = rtime;
    }
    public String getRecontent() { //��ȡ�ظ�����
        return recontent;
    }
    public void setRecontent(String recontent) {  //���ûظ�����
        this.recontent = recontent;
    }
}
