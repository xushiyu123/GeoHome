package iserver.controller;

import com.fasterxml.jackson.databind.JavaType;
import iserver.util.*;
import net.sf.json.JSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import iserver.dao.DataSourceDao;

/**
 * @program: GeoHome
 * @description: controller database
 * @author: XUSHIYU
 * @create: 2019-11-06 15:38
 */
@Controller
@RequestMapping("ds")
public class DataSourceController {

    @Autowired(required = false)
    private DataSourceDao dataSourceDao;

    @RequestMapping(value = "author", method = RequestMethod.GET)
    @ResponseBody
    public String WorkByAuthor(String author) throws IOException {
        author = URLDecoder.decode(author, "UTF-8");
        List<Work> works = dataSourceDao.getWorksByAuthor(author);
        ObjectMapper objectMapper = new ObjectMapper();
        String str = objectMapper.writeValueAsString(works);
        return str;
    }

    @RequestMapping(value = "all", method = RequestMethod.GET)
    @ResponseBody
    public String WorkByAuthor() throws IOException {
        List<Work> works = dataSourceDao.getAllWorks();
        ObjectMapper objectMapper = new ObjectMapper();
        String str = objectMapper.writeValueAsString(works);
        return str;
    }

    @RequestMapping(value = "service", method = RequestMethod.GET)
    @ResponseBody
    public String ServicesByName(String name) throws IOException {
        Service service = dataSourceDao.getServiceByName(name);
        ObjectMapper objectMapper = new ObjectMapper();
        String str = objectMapper.writeValueAsString(service);
        return str;
    }

    @RequestMapping(value = "member", method = RequestMethod.GET)
    @ResponseBody
    public String MemberByName(String name) throws IOException {
        Member member = dataSourceDao.GetMemberByName(name);
        ObjectMapper objectMapper = new ObjectMapper();
        String str = objectMapper.writeValueAsString(member);
        return str;
    }

    @RequestMapping(value = "module", method = RequestMethod.GET)
    @ResponseBody
    public String ModuleByName(String name) throws IOException {
        Module module = dataSourceDao.GetModuleByName(name);
        ObjectMapper objectMapper = new ObjectMapper();
        String str = objectMapper.writeValueAsString(module);
        return str;
    }

    @RequestMapping(value = "parametersByModule", method = RequestMethod.GET)
    @ResponseBody
    public String ParametersByModule(String module) throws IOException {
        List<Parameter> parameters = dataSourceDao.GetParametersByModule(module);
        ObjectMapper objectMapper = new ObjectMapper();
        String str = objectMapper.writeValueAsString(parameters);
        return str;
    }

    @RequestMapping(value = "parametersByModules", method = RequestMethod.GET)
    @ResponseBody
    public String ParametersByModules(String modules) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        JavaType javaType = objectMapper.getTypeFactory().constructParametricType(ArrayList.class, String.class);
        List<String> moduleList = objectMapper.readValue(modules,javaType);
        System.out.println(moduleList.size());
        List<Parameter> parameterList = new ArrayList<>();
        for (String module : moduleList) {
            List<Parameter> parameters = dataSourceDao.GetParametersByModule(module);
            parameterList.addAll(parameters);
        }
        String str = objectMapper.writeValueAsString(parameterList);
        return str;
    }
}
