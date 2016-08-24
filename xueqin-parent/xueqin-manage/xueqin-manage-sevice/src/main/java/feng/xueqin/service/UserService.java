package feng.xueqin.service;

import feng.xueqin.mapper.UserMapper;
import feng.xueqin.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by qinxf on 16.7.28.
 */
@Service
public class UserService extends BaseService<User>{

    @Resource
    private UserMapper userMapper;

    public User queryLogin(String userName) {
        return userMapper.queryUserByName(userName);
    }
}
