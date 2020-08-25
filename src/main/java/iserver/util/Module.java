package iserver.util;

/**
 * @program: GeoHome
 * @description:
 * @author: XUSHIYU
 * @create: 2019-11-27 20:25
 */
public class Module {
    private String name;

    private String url;

    private String service;

    private String description;

    private String function;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getService() {
        return service;
    }

    public void setService(String service) {
        this.service = service;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }
}
