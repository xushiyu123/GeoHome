package iserver.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

/**
 * @program: GeoDataApi
 * @description: 响应信息json
 * @author: XUSHIYU
 * @create: 2019-08-21 10:20
 */
public class ResponseJson {
    /**
     * 设置成功访问响应消息
     * @param data 返回数据
     * @return
     */
    public static ObjectNode getResponseJSON() {
        ObjectMapper objectMapper = new ObjectMapper();
        ObjectNode responseJSON = objectMapper.createObjectNode();
        responseJSON.put("code", "0");
        responseJSON.put("message", "success");
        responseJSON.put("data","");
        return responseJSON;
    }

    /**`
     * 设置访问失败响应消息
     * @param responseJSON
     * @param code
     * @param messages
     */
    public static void setResponseJSON(ObjectNode responseJSON, String code, String messages, String data) {
        responseJSON.put("code", code);
        responseJSON.put("message", messages);
        responseJSON.put("data", data);
    }
}
