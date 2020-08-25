package iserver.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import iserver.util.ResponseJson;
import iserver.util.Workspace;
import com.fasterxml.jackson.databind.node.ObjectNode;
import org.geotools.coverage.grid.GridCoverage2D;
import org.geotools.gce.geotiff.GeoTiffReader;
import org.geotools.geometry.DirectPosition2D;
import org.opengis.geometry.DirectPosition;
import org.opengis.referencing.crs.CoordinateReferenceSystem;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @program: GeoHome
 * @description:
 * @author: XUSHIYU
 * @create: 2020-01-06 10:22
 */
@Controller
@RequestMapping("dem")
public class DEMController {

    @RequestMapping(value = "point", method = RequestMethod.GET)
    @ResponseBody
    public double ParametersByModule(String name, double x, double y) throws IOException {
        String demfile = Workspace.uploadFolder + name;
        File file = new File(demfile);
        GeoTiffReader tiffReader = new GeoTiffReader(file);
        GridCoverage2D coverage = tiffReader.read(null);
        CoordinateReferenceSystem crs = coverage.getCoordinateReferenceSystem2D();
        DirectPosition position = new DirectPosition2D(crs, x, y);
        int[] results = (int[]) coverage.evaluate(position);
        System.out.println(results[0]);
        return results[0];
    }

    @RequestMapping(value = "linestring", method = RequestMethod.GET)
    @ResponseBody
    public String ParametersByModule(String name, String line) throws IOException {
        String demfile = Workspace.uploadFolder + name;
        File file = new File(demfile);
        ObjectMapper mapper = new ObjectMapper();
        if (file.exists()){
            GeoTiffReader tiffReader = new GeoTiffReader(file);
            GridCoverage2D coverage = tiffReader.read(null);
            CoordinateReferenceSystem crs = coverage.getCoordinateReferenceSystem2D();
            List<Integer> vals = new ArrayList();
            String[] points = line.split(" ");
            for (int i = 0;i<points.length;i++){
                String[] coors = points[i].split(",");
                double lon = Double.parseDouble(coors[0]);
                double lat = Double.parseDouble(coors[1]);
                DirectPosition position = new DirectPosition2D(crs, lon, lat);
                int[] results = (int[]) coverage.evaluate(position);
                vals.add(results[0]);
                System.out.println(results[0]);
            }
            return mapper.writeValueAsString(vals);
        }else {
            ObjectNode json = ResponseJson.getResponseJSON();
            ResponseJson.setResponseJSON(json, "1", "failure","file not found");
            return mapper.writeValueAsString(json);
        }
    }
}
