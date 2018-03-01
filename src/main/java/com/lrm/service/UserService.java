package com.lrm.service;

import com.lrm.po.User;

/**
 * Created by ghb on 2017/10/15.
 */
public interface UserService {

    User checkUser(String username, String password);
}
