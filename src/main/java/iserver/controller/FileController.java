package iserver.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import iserver.util.GeoFile;
import iserver.util.ResponseJson;
import iserver.util.Workspace;
import net.sf.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.FileWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import iserver.tool.JsonFormatTool;

/**
 * @program: GeoHome
 * @description:
 * @author: XUSHIYU
 * @create: 2019-11-14 10:29
 */
@Controller
@RequestMapping(value = "/file")
public class FileController {
    @RequestMapping(value = "upload", method = RequestMethod.POST)
    @ResponseBody
    public String handleFileUpload(MultipartHttpServletRequest request) throws IOException {
        String savePath = Workspace.uploadFolder;
        File file = new File(savePath);
        //判断上传文件的保存目录是否存在
        if (!file.exists() && !file.isDirectory()) {
//            System.out.println(savePath + "目录不存在，需要创建");
            //创建目录
            file.mkdir();
        }
        String path = savePath;
        Iterator<String> iterator = request.getFileNames();

        while (iterator.hasNext()) {
            String filename = iterator.next();
            MultipartFile multipartFile = request.getFile(filename);
            byte[] buffer = multipartFile.getBytes();
//                    System.out.println(filename);
            if (filename == null || filename.trim().equals("")) {
                continue;
            }
            //注意：不同的浏览器提交的文件名是不一样的，有些浏览器提交上来的文件名是带有路径的，如：  c:\a\b\1.txt，而有些只是单纯的文件名，如：1.txt
            //处理获取到的上传文件的文件名的路径部分，只保留文件名部分
            filename = filename.substring(filename.lastIndexOf("\\") + 1);
            path += "\\" + filename;
            //获取item中的上传文件的输入流
//            InputStream in = item.getInputStream();
            //创建一个文件输出流
            FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);
            //创建一个缓冲区
            //判断输入流中的数据是否已经读完的标识
            int len = buffer.length;
            //循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
            //使用FileOutputStream输出流将缓冲区的数据写入到指定的目录(savePath + "\\" + filename)当中
            out.write(buffer, 0, len);
            //关闭输出流
            out.close();
            //删除处理文件上传时生成的临时文件
            // do stuff...
        }
        ObjectMapper mapper = new ObjectMapper();
        List<GeoFile> fileList = new ArrayList<>();
        return mapper.writeValueAsString(fileList);
    }

//    @RequestMapping(value = "json/write", method = RequestMethod.POST)
//    @ResponseBody
//    public ObjectNode writeJson(@RequestParam(defaultValue = "") String json, @RequestParam(defaultValue = "") String name, HttpServletResponse response) throws IOException {
//        ObjectNode responseJSON = ResponseJson.getResponseJSON();
//        String path = "F:/upload/" + name + ".json";
//        if (writeFile(json, path)) {
//            ResponseJson.setResponseJSON(responseJSON, "0", "success", path);
//        } else {
//            ResponseJson.setResponseJSON(responseJSON, "0", "failed", "wrong json");
//        }
//        return responseJSON;
//    }
//
//    private boolean writeFile(String jsonString, String path) {
//        try {
//            File file = new File(path);
//            if (file.exists())
//                file.delete();
//            file.createNewFile();
//            jsonString = jsonString.substring(1, jsonString.length() - 1);
//
//            //将回车换行转换一下，因为JSON串中字符串不能出现显式的回车换行
////            jsonString = jsonString.replaceAll("\r\n", "");
//            //将换行转换一下，因为JSON串中字符串不能出现显式的换行
//
//            //将单引号转义一下，因为JSON串中的字符串类型可以单引号引起来的
////            jsonString = jsonString.replaceAll("'", "");
//            //将双引号转义一下，因为JSON串中的字符串类型可以单引号引起来的
//
//            jsonString = JsonFormatTool.formatJson(jsonString);
//            jsonString = jsonString.replaceAll("\\\\\"", "'");
//            jsonString = jsonString.replaceAll("\\\\n", "");
//            System.out.println(jsonString);
//            Writer out = new OutputStreamWriter(new FileOutputStream(file), "UTF-8");
//            out.write(jsonString);
//            out.flush();
//            out.close();
//            return true;
//        } catch (IOException e) {
//            return false;
//        }
//    }
}

