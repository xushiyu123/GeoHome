package iserver.controller;

import com.fasterxml.jackson.databind.node.ObjectNode;
import it.geosolutions.geoserver.rest.GeoServerRESTManager;
import it.geosolutions.geoserver.rest.decoder.RESTDataStore;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.stereotype.Controller;
import it.geosolutions.geoserver.rest.GeoServerRESTReader;
import it.geosolutions.geoserver.rest.GeoServerRESTPublisher;
import it.geosolutions.geoserver.rest.encoder.datastore.GSGeoTIFFDatastoreEncoder;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URL;
import java.util.*;

import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

import iserver.util.ResponseJson;
import iserver.util.Geoserver;

/**
 * @program: GeoServer
 * @description: publish geodata services
 * @author: XUSHIYU
 * @create: 2019-09-16 10:46
 */
@Controller
@RequestMapping(value = "/publish")
public class PublishController {
    /**
     * shapefile数据发布服务
     *
     * @param shpPath  shapefile路径
     * @param response 服务响应信息
     * @return
     */
    @RequestMapping(value = "shapefile", method = RequestMethod.POST)
    @ResponseBody
    public ObjectNode PublishShpfile(@RequestParam(defaultValue = "") String shpPath, HttpServletResponse response) throws IOException {
        shpPath = alterZipfile(shpPath);
        ObjectNode responseJSON = ResponseJson.getResponseJSON();
        File file = new File(shpPath);
        String message = "";
        String json = "";
        if (!file.exists()) {
            message = "invalid shapefile!";
            response.setStatus(500);
            return responseJSON;
        } else {
            String fileName = shpPath.substring(shpPath.lastIndexOf("/") + 1);
            String layerName = fileName.substring(0, fileName.lastIndexOf("."));
            String suffix = fileName.substring(fileName.lastIndexOf("."));
            if (!suffix.equals(".zip"))
                message = "error file format, no zip file submit!";
            json = PublishShp(shpPath, layerName);
        }
        ResponseJson.setResponseJSON(responseJSON, "200", message, json);
        return responseJSON;
    }

    private String alterZipfile(String file) throws IOException {
        ZipFile zf = new ZipFile(file);
        InputStream in = new BufferedInputStream(new FileInputStream(file));
        ZipInputStream zin = new ZipInputStream(in);
        ZipEntry ze;
        String newName = "";
        while ((ze = zin.getNextEntry()) != null) {
            if (ze.isDirectory()) {
            } else {
                String name = ze.getName();
                newName = name.substring(0, name.indexOf("."));
                break;
            }
        }
        zin.closeEntry();
        in.close();
        zf.close();
        return reName(file, newName);
    }

    private String reName(String file, String newName) {
        String folder = file.substring(0, file.lastIndexOf("/") + 1);
        String suffix = file.substring(file.lastIndexOf("."));
        String newFile = folder + newName + suffix;
//        System.out.println(file);
        File f = new File(file);
        //将原文件更改
//        System.out.println(newFile);
        f.renameTo(new File(newFile));
        return newFile;
    }

    /**
     * 发布文件
     *
     * @param shpPath   文件路径
     * @param layerName 发布的图层名
     * @return
     */
    private String PublishShp(String shpPath, String layerName) {
        String RESTURL = Geoserver.RESTURL;
        String RESTUSER = Geoserver.RESTUSER;
        String RESTPW = Geoserver.RESTPW;
        String result = "";
        try {
            File zipFile = new File(shpPath);

            GeoServerRESTReader reader = new GeoServerRESTReader(RESTURL, RESTUSER, RESTPW);
            GeoServerRESTPublisher publisher = new GeoServerRESTPublisher(RESTURL, RESTUSER, RESTPW);

            List<String> workspaces = reader.getWorkspaceNames();

            if (workspaces.contains(Geoserver.WS)) {

                if (publisher.publishShp(Geoserver.WS, Geoserver.SN, layerName, zipFile, "EPSG:4326")) {
                    result = Geoserver.RESTURL + "/" + Geoserver.WS + "/ows?service=WFS&version=1.0.0&request=GetFeature&typeName=" +
                            Geoserver.WS + ":" + layerName + "&maxFeatures=1000&outputFormat=application/json";
                }
            }
        } catch (Exception e) {
        }
        return result;
    }

//    @RequestMapping(value = "geotiff", method = RequestMethod.POST)
//    @ResponseBody
//    public ObjectNode PublishGeotif(@RequestParam(defaultValue = "") String tifPath, HttpServletResponse response) throws IOException {
//        ObjectNode responseJSON = ResponseJson.getResponseJSON();
//
//        ResponseJson.setResponseJSON(responseJSON, "200", message, json);
//        return responseJSON;
//    }
//
//    private String PublishTif(String tifPath) throws Exception {
//        URL url = new URL(Geoserver.RESTURL);
//        GeoServerRESTManager manager = new GeoServerRESTManager(url, Geoserver.RESTUSER, Geoserver.RESTPW);
//        GeoServerRESTPublisher publisher = manager.getPublisher();
//        List<String> workspaces = manager.getReader().getWorkspaceNames();
//        if (!workspaces.contains(Geoserver.WS)) {
//            boolean createws = publisher.createWorkspace(Geoserver.WS);
//            System.out.println("create ws : " + createws);
//        } else {
//            System.out.println("workspace已经存在了,ws :" + Geoserver.WS);
//        }
//
//        //判断数据存储（datastore）是否已经存在，不存在则创建
//
//        RESTDataStore restStore = manager.getReader().getDatastore(Geoserver.WS, Geoserver.SN);
//        if (restStore == null) {
//            GSGeoTIFFDatastoreEncoder gsGeoTIFFDatastoreEncoder = new GSGeoTIFFDatastoreEncoder(Geoserver.SN);
//            gsGeoTIFFDatastoreEncoder.setWorkspaceName("mxleimm");
//            gsGeoTIFFDatastoreEncoder.setUrl(new URL("file:" + tifPath));
//            boolean createStore = manager.getStoreManager().create(Geoserver.WS, gsGeoTIFFDatastoreEncoder);
//            System.out.println("create store (TIFF文件创建状态) : " + createStore);
//            boolean publish = manager.getPublisher().publishGeoTIFF(Geoserver.WS, Geoserver.SN, new File(tifPath));
//            System.out.println("publish (TIFF文件发布状态) : " + publish);
//
//        } else {
//            System.out.println("数据存储已经存在了,store:" + Geoserver.SN);
//        }
//    }
}
