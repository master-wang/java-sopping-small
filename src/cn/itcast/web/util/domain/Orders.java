package cn.itcast.web.util.domain;

public class Orders {
    private int o_id;
    private int c_id;
    private int u_id;
    private String is_order;
    public int getO_id() {
        return o_id;
    }

    public String getIs_order() {
        return is_order;
    }

    public void setIs_order(String is_order) {
        this.is_order = is_order;
    }

    public void setO_id(int o_id) {
        this.o_id = o_id;
    }

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public int getU_id() {
        return u_id;
    }

    public void setU_id(int u_id) {
        this.u_id = u_id;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "o_id=" + o_id +
                ", c_id=" + c_id +
                ", u_id=" + u_id +
                ", is_order='" + is_order + '\'' +
                '}';
    }
}
