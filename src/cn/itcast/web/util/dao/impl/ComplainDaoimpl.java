package cn.itcast.web.util.dao.impl;

import cn.itcast.web.util.dao.ComplainDao;
import cn.itcast.web.util.util.JDBCDBPoolUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Map;

public class ComplainDaoimpl implements ComplainDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCDBPoolUtils.getDatasource());
    @Override
    public void addComplaint(int u_id, String c_desc) {
        String sql = "INSERT INTO `complaint` ( `u_id`, `c_desc` ) VALUES ( ?, ? );";
        int update = template.update(sql, u_id, c_desc);
        System.out.println("插入成功："+update);
    }

    @Override
    public List getComplaintList() {
        try{
            String sql ="select * from `complaint`,`user` where `complaint`.u_id = `user`.id";
            List<Map<String, Object>> list = template.queryForList(sql);
            System.out.println(list);
            return list;
        } catch (
                DataAccessException e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public void deleteComplaintById(int c_id) {
        String sql = "delete from complaint where c_id = ?";
        int count = template.update(sql, c_id);
        System.out.println("删除成功"+count);
    }
}
