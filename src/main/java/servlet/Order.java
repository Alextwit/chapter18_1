package servlet;

import java.util.UUID;

public class Order {
    private String uniqueID;
    private String name;

    public Order(String name) {
        this.uniqueID = UUID.randomUUID().toString();
        this.name = name;
    }

    public String getUniqueID() {
        return uniqueID;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

}
