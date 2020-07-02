package cn.tx.dao;

import cn.tx.model.Login;
import cn.tx.query.LoginQuery;

public interface LoginMapper extends BaseDao<LoginQuery,Login> {

    public Login selectUsername(Login login);

}