package cn.itcast.web.util.dao.impl;

import cn.itcast.web.util.dao.OrdersDao;
import cn.itcast.web.util.util.JDBCDBPoolUtils;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;
import java.util.Map;

public class OrdersDaoimpl implements OrdersDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCDBPoolUtils.getDatasource());
    @Override
    public void addOrders(int c_id, int u_id) {
        String sql = "INSERT INTO `orders` ( `c_id`, `u_id` ) VALUES ( ?, ? );";
        int update = template.update(sql, c_id, u_id);
        System.out.println("插入成功："+update);
    }

    @Override
    public int findIsExit(int c_id, int u_id) {
        String sql = "select count(*) from `orders` where c_id= ? and u_id = ? ";
        Integer count = template.queryForObject(sql, Integer.class,c_id,u_id);
        return count;
    }

    @Override
    public void addOrdersBuy(int c_id, int u_id) {
        String sql = "INSERT INTO `orders` ( `c_id`, `u_id` ,`is_order`) VALUES ( ?, ? ,?);";
        int update = template.update(sql, c_id, u_id,"true");
        System.out.println("插入成功："+update);
    }

    @Override
    public List getAllMyGoBuyCar(int u_id) {
        String sql ="select * from `orders` ,commodity  where u_id = ? and is_order = ? and orders.c_id = commodity.c_id";
        List<Map<String, Object>> list = template.queryForList(sql,u_id,"false");
        System.out.println(list);
        return list;
    }

    @Override
    public void updateOrdertrue(int o_id) {
        String sql ="update orders set is_order = ?   where o_id = ?";
        int count = template.update(sql,"true",o_id);
        System.out.println("更新用户信息："+count);
    }

    @Override
    public void orderDelById(int o_id) {
        String sql ="delete from orders where o_id = ?";
        int count = template.update(sql,o_id);
        System.out.println("更新用户信息："+count);
    }

    @Override
    public List getAllMyGoBuyHistory(int u_id) {
        String sql ="select * from `orders` ,commodity  where u_id = ? and is_order = ? and orders.c_id = commodity.c_id";
        List<Map<String, Object>> list = template.queryForList(sql,u_id,"true");
        System.out.println(list);
        return list;
    }
}
