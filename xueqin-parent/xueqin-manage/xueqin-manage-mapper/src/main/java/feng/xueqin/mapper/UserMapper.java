package feng.xueqin.mapper;

import com.github.abel533.mapper.Mapper;
import feng.xueqin.pojo.ItemParam;
import feng.xueqin.pojo.User;

import javax.annotation.Resource;

/**
 * Created by qinxf on 16.7.28.
 */
@Resource
public interface UserMapper extends Mapper<User> {

    public User queryUserByName(String userName);
}
