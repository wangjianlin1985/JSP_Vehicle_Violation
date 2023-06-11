package com;

import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import com.model.*;
import com.core.BasetableFactory;
import com.jspsmart.upload.Request;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 1.0
 */
public class BasetableFactoryProxy extends BasetableFactory {
    private BasetableFactory factory;
    public BasetableFactoryProxy(BasetableFactory factory) {
        this.factory = factory;
    }

    @Override
	public int getRow(String sql) {
        return factory.getRow(sql);
    }

    @Override
	public boolean CreateUser(HttpServletRequest request) {
         System.out.print("BasetableFactoryProxy.java÷–:"+request+"Ω· ¯");
        return factory.CreateUser(request);
    }

    @Override
	public User SearchUser(String sql) {
        return factory.SearchUser(sql);
    }

    @Override
	public Collection ListHead(int page, String sql) {
        return factory.ListHead(page, sql);
    }

    @Override
	public Collection ListUser(int page, String sql) {
        return factory.ListUser(page, sql);
    }

    @Override
	public Head SearchHead(String sql) {
        return factory.SearchHead(sql);
    }

    @Override
	public boolean CreateHead(String iid, String name,int state) {
        return factory.CreateHead(iid, name, state);
    }

    @Override
	public Collection ListAffiche(int page, String sql) {
        return factory.ListAffiche(page, sql);
    }

    @Override
	public Affiche SearchAffiche(String sql) {
        return factory.SearchAffiche(sql);
    }

    @Override
	public boolean CreateAffiche(HttpServletRequest request) {
        return factory.CreateAffiche(request);
    }

    @Override
	public boolean DeleteAffiche(String sql) {
        return factory.DeleteAffiche(sql);
    }

    @Override
	public Collection ListNew(int page, String sql) {
        return factory.ListNew(page, sql);
    }

    @Override
	public New SearchNew(String sql) {
        return factory.SearchNew(sql);
    }

    @Override
	public boolean CreateNew(HttpServletRequest request) {
        return factory.CreateNew(request);
    }

    @Override
	public boolean DeleteNew(String sql) {
        return factory.DeleteNew(sql);
    }

    @Override
	public Collection ListLink(int page, String sql) {
        return factory.ListLink(page, sql);
    }

    @Override
	public Link SearchLink(String sql) {
        return factory.SearchLink(sql);
    }

    @Override
	public boolean CreateLink(HttpServletRequest request) {
        return factory.CreateLink(request);
    }

    @Override
	public boolean DeleteLink(String sql) {
        return factory.DeleteLink(sql);
    }

    @Override
	public Collection ListCar(int page, String sql) {
        return factory.ListCar(page, sql);
    }
    
    @Override
	public Collection ListCar(String sql) {
        return factory.ListCar(sql);
    }
    
    @Override
	public Car SearchCar(String sql) {
        return factory.SearchCar(sql);
    }

    @Override
	public boolean CreateCar(HttpServletRequest request) {
        return factory.CreateCar(request);
    }

    @Override
	public boolean DeleteCar(String sql) {
        return factory.DeleteCar(sql);
    }

    @Override
	public Collection ListWz(int page, String sql) {
        return factory.ListWz(page,sql);
    }

    @Override
	public Wz SearchWz(String sql) {
        return factory.SearchWz(sql);
    }

    @Override
	public boolean CreateWz(HttpServletRequest request) {
        return factory.CreateWz(request);
    }

    @Override
	public boolean DeleteWz(HttpServletRequest request,String sql) {
        return factory.DeleteWz(request,sql);
    }

    @Override
	public Collection ListResolvent(String sql) {
        return factory.ListResolvent(sql);
    }

    @Override
	public Resolvent SearchResolvent(String sql) {
        return factory.SearchResolvent(sql);
    }

    @Override
	public boolean CreateResolvent(Request request,String iid) {
        return factory.CreateResolvent(request,iid);
    }

    @Override
	public boolean DeleteResolvent(String sql) {
        return factory.DeleteResolvent(sql);
    }

    @Override
	public Collection ListWz(String sql) {
        return factory.ListWz(sql);
    }

    @Override
	public Collection ListResolvent(int page, String sql) {
        return factory.ListResolvent(page,sql);
    }

    @Override
	public Collection ListQuestion(int page, String sql) {
        return factory.ListQuestion(page,sql);
    }

    @Override
	public Question SearchQuestion(String sql) {
        return factory.SearchQuestion(sql);
    }

    @Override
	public boolean CreateQuestion(HttpServletRequest request) {
        return factory.CreateQuestion(request);
    }

    @Override
	public boolean DeleteQuestion(String sql) {
        return factory.DeleteQuestion(sql);
    }

    @Override
	public Collection ListNew(String sql) {
        return factory.ListNew(sql);
    }

    @Override
	public Collection ListQuestion(String sql) {
        return factory.ListQuestion(sql);
    }

    @Override
	public Collection ListGuestboard(int page, String sql) {
        return factory.ListGuestboard(page,sql);
    }

    @Override
	public Collection ListGuestboard(String sql) {
        return factory.ListGuestboard(sql);
    }

    @Override
	public Guestboard SearchGuestboard(String sql) {
        return factory.SearchGuestboard(sql);
    }

    @Override
	public boolean CreateGuestboard(HttpServletRequest request) {
        return factory.CreateGuestboard(request);
    }

    @Override
	public boolean DeleteGuestboard(String sql) {
        return factory.DeleteGuestboard(sql);
    }

    @Override
	public boolean DeleteHead(HttpServletRequest request, String sql) {
        return factory.DeleteHead(request,sql);
    }

    @Override
	public Collection ListAffiche(String sql) {
        return factory.ListAffiche(sql);
    }

	@Override
	public boolean CreateBill(HttpServletRequest request) {
		// TODO Auto-generated method stub
		return factory.CreateBill(request);
	}

	@Override
	public boolean DeleteBill(String sql) {
		// TODO Auto-generated method stub
		return factory.DeleteBill(sql);
	}

	@Override
	public Collection ListBill(int page, String sql) {
		// TODO Auto-generated method stub
		return factory.ListBill(page, sql);
	}

	@Override
	public Collection ListBill(String sql) {
		// TODO Auto-generated method stub
		return factory.ListBill(sql);
	}
	
	@Override
	public Bill SearchBill(String sql) {
		// TODO Auto-generated method stub
		return factory.SearchBill(sql);
	}
}
