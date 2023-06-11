package com.core;

public final class FinalConstants {

    public static int STATUS_USER = 0; //��ͨ�û�
    public static int STATUS_ADMIN = 1; //����Ա
    public static int STATUS_USER_T = 2; //�����û�
    public static int STATUS_USER_TT = 3; //��ʦ
    public static int STATE_FREE = 0; //��Ա����
    public static int STATE_FREEZE = 1; //��Ա����

    public static int STATE_NOREGULAR = 0; //���ð�
    public static int STATE_REGULAR = 1; //��ʽ��

    public static int STATE_HEAD = 0; //ͷ��
    public static int STATE_SOFT = 1; //���
    public static int STATE_RESOLVENT = 2; //�������

    public static int STATE_TOOL = 0; //����
    public static int STATE_MEND = 1; //����


    //parameter
    public static int STEP = 8; //��ҳ����

    //user
    public static final String INSERT_USER = "INSERT INTO user (uid,password,name,regqu,reganswer,iid,sex,age,tel,email,qq,regtime,address,http,status,state,resume) VALUES(?,?,?,?,?,?,?,?,?,?,?,now(),?,?,?,?,?)";
    public static final String UPDATE_USER = "UPDATE (user) SET password=?,name=?,iid=?,sex=?,age=?,tel=?,email=?,qq=?,address=?,http=?,status=?,state=?,resume=? where uid=?";
    public static final String UPDATE_USER_M = "UPDATE (user) SET status=?,state=? where uid=?";
    public static final String SELECT_USER = "SELECT * FROM (user) ";

    //head
    public static final String INSERT_HEAD =
        "INSERT INTO ico (iid,path,atime,state) VALUES(?,?,now(),?)";
    public static final String SELECT_HEAD = "SELECT * FROM (ico) ";
    public static final String DELETE_HEAD = "DELETE FROM ico ";

    //affiche
    public static final String INSERT_AFFICHE =
        "INSERT INTO affiche (uid,title,atime,content) VALUES(?,?,now(),?)";
    public static final String UPDATE_AFFICHE =
        "UPDATE (affiche) SET title=?,content=? where aid=?";
    public static final String SELECT_AFFICHE = "SELECT * FROM (affiche) ";
    public static final String DELETE_AFFICHE = "DELETE FROM affiche ";

    //new
    public static final String INSERT_NEW =
        "INSERT INTO new (uid,title,ntime,fromto,content,lid) VALUES(?,?,now(),?,?,?)";
    public static final String SELECT_NEW = "SELECT * FROM (new) ";
    public static final String DELETE_NEW = "DELETE FROM new ";
    //bill
    public static final String INSERT_BILL =
        "INSERT INTO bill (billNO,bxname,cbrname,tbrname,date,qx,br) VALUES(?,?,?,?,?,?,?)";
    public static final String UPDATE_BILL = "UPDATE (bill) SET billNO=?,bxname=?,cbrname=?,tbrname=?,date=?,qx=?,br=? where id=?";
    public static final String SELECT_BILL = "SELECT * FROM (bill) ";
    public static final String DELETE_BILL = "DELETE FROM bill ";
    
    
    //link
    public static final String INSERT_LINK =
        "INSERT INTO link (name,ltime,url) VALUES(?,now(),?)";
    public static final String UPDATE_LINK = "UPDATE (link) SET name=?,url=? where lid=?";
    public static final String SELECT_LINK = "SELECT * FROM (link) ";
    public static final String DELETE_LINK = "DELETE FROM link ";

    //car
    public static final String INSERT_CAR = "INSERT INTO car (carNo,carColour,name,tel,sfid,bz,flag) VALUES(?,?,?,?,?,?,?)";
    public static final String UPDATE_CAR = "UPDATE car SET carNo=?,carColour=?, name=?,tel=?, sfid=?, bz=?, flag=? where id=?";
    public static final String SELECT_CAR = "SELECT * FROM car ";
    public static final String DELETE_CAR = "DELETE FROM car ";

    //wz
    public static final String INSERT_WZ = "INSERT INTO wz (name,edition,price,uptime,uid,iid,sid,environment,commend,loadnum,regular,introduce,resume) VALUES(?,?,?,now(),?,?,?,?,?,?,?,?,?)";
    public static final String UPDATE_WZ = "UPDATE wz SET name=?,edition=?,price=?,iid=?,sid=?,environment=?,commend=?,loadnum=?,regular=?,introduce=?,resume=? where id=?";
    public static final String UPDATE_WZ_LOAD = "UPDATE wz SET loadnum=? where id=?";
    public static final String SELECT_WZ= "SELECT * FROM wz ";
    public static final String DELETE_WZ = "DELETE FROM wz ";

    //resolvent
    public static final String INSERT_RESOLVENT =
        "INSERT INTO resolvent (sid,uid,sfid,name,uptime,iid,content) VALUES(?,?,?,?,now(),?,?)";
    public static final String UPDATE_RESOLVENT =
        "UPDATE (resolvent) SET sid=?,sfid=?,name=?,content=? where rid=?";
    public static final String SELECT_RESOLVENT = "SELECT * FROM (resolvent) ";
    public static final String DELETE_RESOLVENT = "DELETE FROM resolvent ";

    //question
    public static final String INSERT_QUESTION =
        "INSERT INTO question (question,answer) VALUES(?,?)";
    public static final String UPDATE_QUESTION =
        "UPDATE (question) SET answer=?,question=? where qid=?";
    public static final String SELECT_QUESTION = "SELECT * FROM (question) ";
    public static final String DELETE_QUESTION = "DELETE FROM question ";

    //guestboard
    public static final String INSERT_GUESTBOARD =
        "INSERT INTO guestboard (title,guest,gtime,content,mid,pllx,uid,re_uid) VALUES(?,?,now(),?,?,?,?,?)";
    public static final String UPDATE_GUESTBOARD =
        "UPDATE (guestboard) SET gflag=1,recontent=?,rtime=now(),re_uid=? where gid=?";
    public static final String SELECT_GUESTBOARD = "SELECT * FROM (guestboard) ";
    public static final String DELETE_GUESTBOARD = "DELETE FROM guestboard ";

    //mend
    public static final String INSERT_MEND = "INSERT INTO mend (sid,name,path,state,uptime,commend,loadnum,filesize,resume) VALUES(?,?,?,?,now(),?,?,?,?)";
    public static final String UPDATE_MEND = "UPDATE (mend) SET sid=?,name=?,state=?,commend=?,loadnum=?,filesize=?,resume=? where mid=?";
    public static final String UPDATE_MEND_LOAD = "UPDATE (mend) SET loadnum=? where mid=?";
    public static final String SELECT_MEND = "SELECT * FROM (mend) ";
    public static final String DELETE_MEND = "DELETE FROM mend ";
}
