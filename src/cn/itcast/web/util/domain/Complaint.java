package cn.itcast.web.util.domain;

public class Complaint {
    private int c_id;
    private int u_id;
    private String c_desc;

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

    public String getC_desc() {
        return c_desc;
    }

    public void setC_desc(String c_desc) {
        this.c_desc = c_desc;
    }

    @Override
    public String toString() {
        return "Complaint{" +
                "c_id=" + c_id +
                ", u_id=" + u_id +
                ", c_desc='" + c_desc + '\'' +
                '}';
    }
}
