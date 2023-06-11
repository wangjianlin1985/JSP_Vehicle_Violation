package com.core;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

import com.BasetableFactoryProxy;
import com.jspsmart.upload.Request;
import com.model.*;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2008</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 2.0
 */

public abstract class BasetableFactory {
    private static final String classname = "com.dao.DbBasetableFactory";
    private static BasetableFactory factory;

    public static BasetableFactory getInstance() {
        if (factory == null) {
            try {
                Class c = Class.forName(classname);
                factory = (BasetableFactory) c.newInstance();
            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            } catch (IllegalAccessException ex1) {
                ex1.printStackTrace();
            } catch (InstantiationException ex1) {
                ex1.printStackTrace();
            }
        }
        return new BasetableFactoryProxy(factory);
    }

    public abstract int getRow(String sql);

    public abstract boolean CreateUser(HttpServletRequest request);

    public abstract User SearchUser(String sql);

    public abstract Collection ListUser(int page, String sql);

    public abstract Collection ListHead(int page, String sql);

    public abstract Head SearchHead(String sql);

    public abstract boolean CreateHead(String iid, String path, int state);
    public abstract boolean DeleteHead(HttpServletRequest request,String sql);

    public abstract Collection ListAffiche(int page, String sql);
    public abstract Collection ListAffiche(String sql);

    public abstract Affiche SearchAffiche(String sql);

    public abstract boolean CreateAffiche(HttpServletRequest request);

    public abstract boolean DeleteAffiche(String sql);

    public abstract Collection ListNew(int page, String sql);

    public abstract Collection ListNew(String sql);

    public abstract New SearchNew(String sql);

    public abstract boolean CreateNew(HttpServletRequest request);

    public abstract boolean DeleteNew(String sql);
    
    //bill
    public abstract Collection ListBill(int page, String sql);

    public abstract Collection ListBill(String sql);

    public abstract Bill SearchBill(String sql);

    public abstract boolean CreateBill(HttpServletRequest request);

    public abstract boolean DeleteBill(String sql);
    
    

    public abstract Collection ListLink(int page, String sql);

    public abstract Link SearchLink(String sql);

    public abstract boolean CreateLink(HttpServletRequest request);

    public abstract boolean DeleteLink(String sql);

    
    
    
    //Î¥ÕÂ
    public abstract Collection ListWz(int page, String sql);
    public abstract Collection ListWz(String sql);
    public abstract Wz SearchWz(String sql);
    public abstract boolean CreateWz(HttpServletRequest request);
    public abstract boolean DeleteWz(HttpServletRequest request,String sql);
  //³µÁ¾ÐÅÏ¢
    public abstract Collection ListCar(int page, String sql);
    public abstract Collection ListCar(String sql);
    public abstract Car SearchCar(String sql);
    public abstract boolean CreateCar(HttpServletRequest request);
    public abstract boolean DeleteCar(String sql);

    
    
    
    
    
    
    public abstract Collection ListResolvent(String sql);

    public abstract Collection ListResolvent(int page, String sql);

    public abstract Resolvent SearchResolvent(String sql);

    public abstract boolean CreateResolvent(Request request, String iid);

    public abstract boolean DeleteResolvent(String sql);

    public abstract Collection ListQuestion(int page, String sql);

    public abstract Collection ListQuestion(String sql);

    public abstract Question SearchQuestion(String sql);

    public abstract boolean CreateQuestion(HttpServletRequest request);

    public abstract boolean DeleteQuestion(String sql);
    public abstract Collection ListGuestboard(int page, String sql);

    public abstract Collection ListGuestboard(String sql);

    public abstract Guestboard SearchGuestboard(String sql);

    public abstract boolean CreateGuestboard(HttpServletRequest request);

    public abstract boolean DeleteGuestboard(String sql);





}
