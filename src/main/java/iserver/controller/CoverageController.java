package iserver.controller;

import com.fasterxml.jackson.databind.node.ObjectNode;
import iserver.util.Geoserver;
import iserver.util.ResponseJson;
import it.geosolutions.geoserver.rest.GeoServerRESTPublisher;
import it.geosolutions.geoserver.rest.GeoServerRESTReader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

/**
 * @program: GeoServer
 * @description: publish geodata services
 * @author: XUSHIYU
 * @create: 2019-09-16 10:46
 */
@Controller
@RequestMapping(value = "/coverage")
public class CoverageController {
    /**
     * shapefile数据发布服务
     *
     * @param name  shapefile路径
     * @param response 服务响应信息
     * @return
     */
    @RequestMapping(value = "delete", method = RequestMethod.POST)
    @ResponseBody
    public void deleteCoverage(@RequestParam(defaultValue = "") String name, HttpServletResponse response) throws IOException{

    }
}
