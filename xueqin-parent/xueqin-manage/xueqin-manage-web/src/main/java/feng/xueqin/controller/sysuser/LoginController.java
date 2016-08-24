package feng.xueqin.controller.sysuser;

import feng.xueqin.pojo.User;
import feng.xueqin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by qinxf on 16.7.27.
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(String userName,String pwd){
        User user =  userService.queryLogin(userName);
        if(pwd.equals(user.getPassword())){

            return "sysIndex";
        }
        return "login";
    }
}
