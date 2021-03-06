/*
 * @(#)UserController.java V2.0 2016年4月25日
 * 百联集团	版权所有
 * 
 * 文件描述...
 *
 * @Title: UserController.java 
 * @Package feng.xueqin.controller 
 * @author qinxf
 * @date 2016年4月25日 下午1:19:16
 * @version V2.0
 * 历史版本：
 * 	1. 【2016年4月25日】 创建文件   by qinxf
 */
package feng.xueqin.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/** 
 * TODO 对该类总结性的描述
 * 
 * @ClassName: UserController 
 * @author qinxf
 * @date 2016年4月25日 下午1:19:16
 * @version V2.0 
 *  
 */
@Controller
public class UIController {

    @RequestMapping(value="/{page}/{pageName}",method = RequestMethod.GET )
    public String toUsers(@PathVariable("page") String page,
                          @PathVariable("pageName") String pageName){

        return  page+"/"+pageName;
    }

    @RequestMapping(value="/{pages}/{page}/{pageName}",method = RequestMethod.GET )
    public String toMain(@PathVariable("pages") String pages,
            @PathVariable("page") String page,
                          @PathVariable("pageName") String pageName){

        return  pages + "/"+page+"/"+pageName;
    }
    @RequestMapping(value="/{pageName}",method = RequestMethod.GET )
    public String toIndex(@PathVariable("pageName") String pageName){

        return  pageName;
    }
}
