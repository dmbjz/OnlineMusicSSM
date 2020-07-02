package cn.tx.filter;

import cn.tx.model.Login;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse  servletResponse, FilterChain filterChain) throws IOException, ServletException {
        //转子类，子类提供更nb的方法
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        //放行静态文件
        String uri = request.getRequestURI();
        //判断路径
        if (uri.contains("/css")||uri.contains("/js")||uri.contains("/images")||uri.contains("/font")||uri.contains("/img")||uri.contains("/javascript")||uri.contains("/style")||uri.contains("/open-iconic")){
            filterChain.doFilter(request,response);
            return;
        }

        //登录页过滤
        String contextPath = request.getServletPath();
        if (contextPath.contains("login")||contextPath.contains("login.jsp")){
            filterChain.doFilter(request,response);
            return;
        }

        //判断有无登录，有登陆才能直接访问servlet
        HttpSession session = request.getSession();
        Login login = (Login) session.getAttribute("user");
        if(login==null){
            request.setAttribute("errorMsg","请先登录!");
            request.getRequestDispatcher("/index.jsp").forward(request,response);
            return;
        }else{
            filterChain.doFilter(request,response);
            return;
        }
    }

    @Override
    public void destroy() {

    }
}
