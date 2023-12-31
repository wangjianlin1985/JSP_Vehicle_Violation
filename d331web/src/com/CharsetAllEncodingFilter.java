package com;


import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharsetAllEncodingFilter
  implements Filter
{
  protected String encoding = null;
  protected FilterConfig filterConfig = null;

  public void destroy()
  {
    this.encoding = null;
    this.filterConfig = null;
  }

  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    if (request.getCharacterEncoding() == null) {
      String encoding = getEncoding();
      if (encoding != null)
        request.setCharacterEncoding(encoding);
    }
    chain.doFilter(request, response); }

  public void init(FilterConfig filterConfig) throws ServletException {
    this.filterConfig = filterConfig;
    this.encoding = filterConfig.getInitParameter("encoding"); }

  protected String getEncoding() {
    return this.encoding;
  }
}