package iserver.util;

/**
 * @program: GeoHome
 * @description:
 * @author: XUSHIYU
 * @create: 2019-11-26 15:54
 */
public class Service {
    private String name;
    private String url;
    private String participants;
    private String time;
    private String description;
    private String introduction;
    private String diagram;
    private String apis;
    private String activiti;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getParticipants() {
        return participants;
    }

    public void setParticipants(String participants) {
        this.participants = participants;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDiagram() {
        return diagram;
    }

    public void setDiagram(String diagram) {
        this.diagram = diagram;
    }

    public String getApis() {
        return apis;
    }

    public void setApis(String apis) {
        this.apis = apis;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getActiviti() {
        return activiti;
    }

    public void setActiviti(String activiti) {
        this.activiti = activiti;
    }
}