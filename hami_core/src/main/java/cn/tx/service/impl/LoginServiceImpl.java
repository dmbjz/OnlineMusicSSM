package cn.tx.service.impl;

import cn.tx.dao.LoginMapper;
import cn.tx.model.Login;
import cn.tx.query.LoginQuery;
import cn.tx.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LoginServiceImpl extends BaseServiceImpl<LoginQuery, Login> implements LoginService {

    private LoginMapper loginMapper;

    @Autowired
    public void setLoginMapper(LoginMapper loginMapper) {
        this.loginMapper = loginMapper;
        this.baseDao = loginMapper;
    }

    @Override
    public Login selectUsername(Login login) {
        return loginMapper.selectUsername(login);
    }


}
