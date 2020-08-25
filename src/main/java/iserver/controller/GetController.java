package iserver.controller;

import com.fasterxml.jackson.databind.node.ObjectNode;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.stereotype.Controller;
import iserver.util.ResponseJson;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Controller测试
 *
 * @author 徐诗宇
 * @version 2018-12-04
 */
@Controller
@RequestMapping(value = "/api/get")
public class GetController {
    /**
     * get api测试：无传入参数
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "simple", method = RequestMethod.GET)
    @ResponseBody
    public ObjectNode getAPI() {
        ObjectNode responseJSON = ResponseJson.getResponseJSON();
        responseJSON.put("data", "1");
        return responseJSON;
    }

    /**0
     * 动态URL测试
     * @param id 传入id
     * @param response
     * @return
     */
    @RequestMapping(value = "active/{id}",method = RequestMethod.GET)
    @ResponseBody
    public ObjectNode getActiveAPI(@PathVariable String id, HttpServletResponse response){
        ObjectNode responseJSON = ResponseJson.getResponseJSON();
        response.setContentType("charset=utf-8");
        if (id.length()>5){
            response.setStatus(500);
            ResponseJson.setResponseJSON(responseJSON, "2", "id不存在","");
            return responseJSON;
        }else {
            responseJSON.putPOJO("data", "1");
            return responseJSON;
        }
    }
    /**
     * 带参GET测试
     * @param response
     * @return
     */
    @RequestMapping(value = "param", method = RequestMethod.GET)
    @ResponseBody
    public ObjectNode getParamAPI(HttpServletRequest request, HttpServletResponse response){
        //设置响应消息的字符编码集
        response.setContentType("charset=utf-8");
        request.getHeader("id1");
        request.getHeader("id2");
        ObjectNode responseJSON = ResponseJson.getResponseJSON();
        return responseJSON;
    }
}
