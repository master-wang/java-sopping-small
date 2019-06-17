package cn.itcast.web.util.domain;

public class Commodity {

    private int c_id;
    private String c_price;
    private String c_desc;
    private String type;
    private String c_img;

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getC_price() {
        return c_price;
    }

    public void setC_price(String c_price) {
        this.c_price = c_price;
    }

    public String getC_desc() {
        return c_desc;
    }

    public void setC_desc(String c_desc) {
        this.c_desc = c_desc;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getC_img() {
        return c_img;
    }

    public void setC_img(String c_img) {
        this.c_img = c_img;
    }

    @Override
    public String toString() {
        return "Commodity{" +
                "c_id=" + c_id +
                ", c_price='" + c_price + '\'' +
                ", c_desc='" + c_desc + '\'' +
                ", type='" + type + '\'' +
                ", c_img='" + c_img + '\'' +
                '}';
    }
}
