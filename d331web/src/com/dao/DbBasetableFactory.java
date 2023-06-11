package com.dao;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import com.model.*;
import com.core.BasetableFactory;
import com.core.Database;
import com.core.FileUtils;
import com.core.FinalConstants;
import com.jspsmart.upload.Request;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @version 1.0
 * ���幤��
 */

public class DbBasetableFactory extends BasetableFactory {
    public DbBasetableFactory() {//���췽��
    }
    //��ȡ��¼����
    @Override
	public int getRow(String sql) {
        return Database.getRow(sql);
    }
//�����û�
    @Override
	public boolean CreateUser(HttpServletRequest request) {
        return (new Dbuser(request)).Insert();
    }
//��ȡ�û���Ϣ
    @Override
	public User SearchUser(String sql) {
        return new Dbuser(sql);
    }
//��ѯ�û���Ϣ�б�
    @Override
	public Collection ListUser(int page, String sql) {
        return new Dbuser().Select(page, sql);
    }
//��ѯͷ���б�
    @Override
	public Collection ListHead(int page, String sql) {
        return new Dbhead().Select(page, sql);
    }
//��ȡͷ����Ϣ
    @Override
	public Head SearchHead(String sql) {
        return new Dbhead(sql);
    }
//���ͷ����Ϣ
    @Override
	public boolean CreateHead(String iid, String path, int state) {
        return new Dbhead(iid, path, state).Insert();
    }
//��ѯ������Ϣ�б�
    @Override
	public Collection ListAffiche(int page, String sql) {
        return new Dbaffiche().Select(page, sql);
    }
    @Override
	public Collection ListAffiche(String sql) {
        return new Dbaffiche().Select(sql);
    }
//��ӹ�����Ϣ
    @Override
	public boolean CreateAffiche(HttpServletRequest request) {
        return new Dbaffiche(request).Insert();
    }
//��ȡ������Ϣ
    @Override
	public Affiche SearchAffiche(String sql) {
        return new Dbaffiche(sql);
    }
//ɾ��������Ϣ
    @Override
	public boolean DeleteAffiche(String sql) {
        return Database.Delete(FinalConstants.DELETE_AFFICHE + sql);
    }
    
    


    //��ѯ�����б�
        @Override
		public Collection ListBill(int page, String sql) {
        	
            return new Dbbill().Select(page, sql);
        }
        @Override
		public Collection ListBill(String sql) {
            return new Dbbill().Select(sql);
        }

    //��ȡ������Ϣ
        @Override
		public Bill SearchBill(String sql) {
            return new Dbbill(sql);
        }
        //��ӱ�����Ϣ
        @Override
		public boolean CreateBill(HttpServletRequest request) {
      	  System.out.println("-222--------------------------------");
            return new Dbbill(request).Insert();
        }
        //ɾ��������Ϣ
        @Override
		public boolean DeleteBill(String sql) {
            return Database.Delete(FinalConstants.DELETE_BILL + sql);
        }
    
    
    
    
    
//��ѯ������Ϣ�б�
    @Override
	public Collection ListNew(int page, String sql) {
        return new Dbnew().Select(page, sql);
    }
    @Override
	public Collection ListNew(String sql) {
        return new Dbnew().Select(sql);
    }

//��ȡ������Ϣ��Ϣ
    @Override
	public New SearchNew(String sql) {
        return new Dbnew(sql);
    }
    //���������Ϣ��Ϣ
    @Override
	public boolean CreateNew(HttpServletRequest request) {
        return new Dbnew(request).Insert();
    }
    //ɾ��������Ϣ��Ϣ
    @Override
	public boolean DeleteNew(String sql) {
        return Database.Delete(FinalConstants.DELETE_NEW + sql);
    }
    //��ѯ����������Ϣ�б�
    @Override
	public Collection ListLink(int page, String sql) {
        return new Dblink().Select(page, sql);
    }
    //��ȡ����������Ϣ
    @Override
	public Link SearchLink(String sql) {
        return new Dblink(sql);
    }
    //�������������Ϣ
    @Override
	public boolean CreateLink(HttpServletRequest request) {
        return new Dblink(request).Insert();
    }
    //ɾ������������Ϣ
    @Override
	public boolean DeleteLink(String sql) {
        return Database.Delete(FinalConstants.DELETE_LINK + sql);
    }
    
    
    
    
    
    
    
    
    //��ѯ������Ϣ�б�
    @Override
	public Collection ListCar(int page, String sql) {
        return new Dbcar().Select(page, sql);
    }
    //��ȡ������Ϣ
    @Override
	public Car SearchCar(String sql) {
        return new Dbcar(sql);
    }
    //��ӳ�����Ϣ
    @Override
	public boolean CreateCar(HttpServletRequest request) {
        return new Dbcar(request).Insert();
    }
    //ɾ��������Ϣ
    @Override
	public boolean DeleteCar(String sql) {
        return Database.Delete(FinalConstants.DELETE_CAR + sql);
    }
    
    //��ȡ������Ϣ
    @Override
	public Collection ListCar(String sql) {
        return new Dbcar().Select(sql);
    }
    //��ѯWZ��Ϣ�б�
    @Override
	public Collection ListWz(int page, String sql) {
        return new Dbwz().Select(page, sql);
    }
    //��ȡWZ�б�
    @Override
	public Wz SearchWz(String sql) {
        return new Dbwz(sql);
    }
    //���WZ�б�
    @Override
	public boolean CreateWz(HttpServletRequest request) {
        return new Dbwz(request).Insert();
    }
    //ɾ��WZ�б�
    @Override
	public boolean DeleteWz(HttpServletRequest request,String sql) {
        if (Database.Delete(FinalConstants.DELETE_WZ + sql)) {
            return true;
        }
        return false;
    }
    //��ѯWZ�б�
    @Override
	public Collection ListWz(String sql) {
        return new Dbwz().Select(sql);
    }
    
    
    
    
    
    
    
    
    
    //��ȡ���������Ϣ
    @Override
	public Resolvent SearchResolvent(String sql) {
        return new Dbresolvent(sql);
    }
    //��ӽ��������Ϣ
    @Override
	public boolean CreateResolvent(Request request, String iid) {
        return new Dbresolvent(request, iid).Insert();
    }
    //ɾ�����������Ϣ
    @Override
	public boolean DeleteResolvent(String sql) {
        return Database.Delete(FinalConstants.DELETE_RESOLVENT + sql);
    }
    
    //��ѯ���������Ϣ�б�
    @Override
	public Collection ListResolvent(String sql) {
        return new Dbresolvent().Select(sql);
    }
    //��ѯ���������Ϣ�б�������ҳ��
    @Override
	public Collection ListResolvent(int page, String sql) {
        return new Dbresolvent().Select(page, sql);
    }
    //��ѯ��ȫ��ʶ�б�������ҳ��
    @Override
	public Collection ListQuestion(int page, String sql) {
        return new Dbquestion().Select(page, sql);
    }
    //��ȡ��ȫ��ʶ��Ϣ
    @Override
	public Question SearchQuestion(String sql) {
        return new Dbquestion(sql);
    }

    @Override
	public boolean CreateQuestion(HttpServletRequest request) {
        return new Dbquestion(request).Insert();
    }

    @Override
	public boolean DeleteQuestion(String sql) {
        return Database.Delete(FinalConstants.DELETE_QUESTION + sql);
    }


    @Override
	public Collection ListQuestion(String sql) {
        return new Dbquestion().Select(sql);
    }

    @Override
	public Collection ListGuestboard(int page, String sql) {
        return new Dbguestboard().Select(page, sql);
    }

    @Override
	public Collection ListGuestboard(String sql) {
        return new Dbguestboard().Select(sql);
    }
    //��ȡ���۲���Ϣ
    @Override
	public Guestboard SearchGuestboard(String sql) {
        return new Dbguestboard(sql);
    }

    @Override
	public boolean CreateGuestboard(HttpServletRequest request) {
        return new Dbguestboard(request).Insert();
    }

    @Override
	public boolean DeleteGuestboard(String sql) {
        return Database.Delete(FinalConstants.DELETE_GUESTBOARD + sql);
    }



    @Override
	public boolean DeleteHead(HttpServletRequest request, String sql) {
        if (!FileUtils.FileDel(request, SearchHead(sql).getPath())) {
            System.out.println("ͼƬɾ��ʧ��");
        }
        if (Database.Delete(FinalConstants.DELETE_HEAD + sql)) {
            return true;
        }
        return false;
    }
    
}
