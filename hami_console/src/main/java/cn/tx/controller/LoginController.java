package cn.tx.controller;

import cn.tx.model.Login;
import cn.tx.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping(path = "/login")
public class LoginController {

    @Autowired
    private LoginService loginService;

    @RequestMapping(path = "/login")
    public String login(){
        return "login";
    }

    @RequestMapping(path = "/checklogin")
    public String checklogin(Login login,
        HttpServletRequest request
    ){
        System.out.println(login);
        if (login.getUsername()==null){
            request.setAttribute("error","请联系管理员");
            return "forward:login";
        }
        Login username = loginService.selectUsername(login);
        if (username==null){
            request.setAttribute("usermsg","用户名错误");
            return "forward:login";
        }
        if (login.getPassword().equals(username.getPassword())){
            request.getSession().setAttribute("user",login);
            return "index";
        }else{
            request.setAttribute("pwdmsg","密码错误");
            return "forward:login";
        }
    }

    @RequestMapping(path = "/outlogin")
    public String outLogin(HttpServletRequest request,HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        return "/login";
    }

}
