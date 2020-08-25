package iserver.dao;

import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Map;
import java.util.ArrayList;

import iserver.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

/**
 * @program: GeoHome
 * @description:
 * @author: XUSHIYU
 * @create: 2019-11-06 16:03
 */
@Repository
public class DataSourceDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    /**
     * get works ny the name of one author
     *
     * @param author
     * @return
     */
    public List<Work> getWorksByAuthor(String author) {
        List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from works order by year DESC");
        List<Work> works = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            Map<String, Object> row = list.get(i);
            String str = row.get("authors").toString();
            if (str.indexOf(author) > -1) {//judge if the result contains the author
                Work work = new Work();
                work.setName(row.get("name").toString());
                work.setAuthors(row.get("authors").toString());
                work.setType(row.get("type").toString());
                work.setYear(Integer.parseInt(row.get("year").toString()));
                work.setFile(row.get("file").toString());
                works.add(work);
            }
        }
        return works;
    }

    /**
     * get all works from database
     *
     * @return
     */
    public List<Work> getAllWorks() {
        List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from works order by year DESC");
        List<Work> works = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            Map<String, Object> row = list.get(i);
            Work work = new Work();
            work.setName(row.get("name").toString());
            work.setAuthors(row.get("authors").toString());
            work.setType(row.get("type").toString());
            work.setYear(Integer.parseInt(row.get("year").toString()));
            work.setFile(row.get("file").toString());
            works.add(work);
        }
        return works;
    }

    /**
     * get service info from services by name
     *
     * @param name
     * @return
     */
    public Service getServiceByName(String name) {
        List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from services where name='" + name + "'");
        Map<String, Object> row = list.get(0);
        Service service = new Service();
        service.setName(row.get("name").toString());
        service.setUrl(row.get("url").toString());
        service.setDescription(row.get("description").toString());
        service.setIntroduction(row.get("introduction").toString());
        service.setDiagram(row.get("diagram").toString());
        service.setApis(row.get("apis").toString());
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        service.setTime(sdf.format(row.get("time")));
        service.setParticipants(row.get("participants").toString());
        service.setActiviti(row.get("activiti").toString());
        return service;
    }

    /**
     * get member info from members by name
     *
     * @param name
     * @return
     */
    public Member GetMemberByName(String name) {
        List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from members where name='" + name + "'");
        Map<String, Object> row = list.get(0);
        Member member = new Member();
        member.setName(row.get("name").toString());
        member.setType(Integer.parseInt(row.get("type").toString()));
        member.setMail(row.get("mail").toString());
        member.setIntroduction(row.get("introduction").toString());
        member.setPhoto(row.get("photo").toString());
        member.setInterest(row.get("interest").toString());
        member.setAddress(row.get("address").toString());
        return member;
    }

    /**
     * get module info from modules by name
     *
     * @param name
     * @return
     */
    public Module GetModuleByName(String name) {
        List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from modules where name='" + name + "'");
        Map<String, Object> row = list.get(0);
        Module module = new Module();
        module.setName(row.get("name").toString());
        module.setService(row.get("service").toString());
        module.setUrl(row.get("url").toString());
        module.setDescription(row.get("description").toString());
        module.setFunction(row.get("function").toString());
        return module;
    }

    /**
     * get parameter list from parameters by module
     * @param module
     * @return
     */
    public List<Parameter> GetParametersByModule(String module) {
        List<Map<String, Object>> list = jdbcTemplate.queryForList("select * from parameters where module='" + module + "'");
        List<Parameter> parameters = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            Map<String, Object> row = list.get(i);
            Parameter parameter = new Parameter();
            parameter.setName(row.get("name").toString());
            parameter.setModule(row.get("module").toString());
            parameter.setType(row.get("type").toString());
            parameter.setRequired(row.get("required").toString());
            parameter.setDescription(row.get("description").toString());
            parameter.setDefaultValue(row.get("defaultValue").toString());
            parameter.setReadable(row.get("readable").toString());
            parameters.add(parameter);
        }
        return parameters;
    }
}
