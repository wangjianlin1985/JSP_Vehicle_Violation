package com.core;

import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.FilterChain;
import java.io.IOException;

/**
 * <p>Title: </p>
 * <p>Description: </p>
 * <p>Copyright: Copyright (c) 2004</p>
 * <p>Company: MR</p>
 * @author BWM
 * @version 1.0
 */

public class SetCharacterEncoding {
    public SetCharacterEncoding() {
    }
    protected String encoding = null;
    protected FilterConfig filterConfig = null;

    public void init(FilterConfig filterConfig) throws ServletException {
        /**@todo Implement this javax.servlet.Filter method*/
        this.filterConfig=filterConfig;
        this.encoding=filterConfig.getInitParameter("encoding");
    }
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        /**@todo Implement this javax.servlet.Filter method*/
       String encoding=selectEncoding(request);
        if(encoding!=null)
            request.setCharacterEncoding(encoding);
        chain.doFilter(request,response);
    }
    public void destroy() {
        /**@todo Implement this javax.servlet.Filter method*/
        this.encoding=null;
        this.filterConfig=null;
    }

    protected String selectEncoding(ServletRequest request) {
        return (this.encoding);
    }
}