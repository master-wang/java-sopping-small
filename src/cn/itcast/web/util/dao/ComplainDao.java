package cn.itcast.web.util.dao;

import java.util.List;

public interface ComplainDao {
    void addComplaint(int u_id, String c_desc);

    List getComplaintList();

    void deleteComplaintById(int c_id);
}
