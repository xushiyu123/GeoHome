package iserver.tool;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @program: GeoHome
 * @description:
 * @author: XUSHIYU
 * @create: 2019-11-26 20:07
 */
@Controller
public class ApplicationController {
    @RequestMapping(value = "name", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView GetName(String name){
        System.out.println(name);
        ModelAndView mav = new ModelAndView("");
        mav.addObject("name",name);
        return mav;
    }
}
