package cn.tx.service;

import cn.tx.model.Login;
import cn.tx.query.LoginQuery;

public interface LoginService extends BaseService<LoginQuery, Login> {

    public Login selectUsername(Login login);

}
