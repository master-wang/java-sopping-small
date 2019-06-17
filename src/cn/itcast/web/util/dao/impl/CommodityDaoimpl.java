package cn.itcast.web.util.dao.impl;

import cn.itcast.web.util.dao.CommodityDao;
import cn.itcast.web.util.domain.Commodity;
import cn.itcast.web.util.util.JDBCDBPoolUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

public class CommodityDaoimpl implements CommodityDao {
    private JdbcTemplate template = new JdbcTemplate(JDBCDBPoolUtils.getDatasource());
    @Override
    public int addMyNewCommodity(Commodity commodity) {

        try{
            final String sql="INSERT INTO `commodity` ( `c_price`, `c_desc`, `type` ) VALUES ( ?, ? ,?)";
            KeyHolder keyHolder = new GeneratedKeyHolder();
            template.update(new PreparedStatementCreator() {
                @Override
                public PreparedStatement createPreparedStatement(java.sql.Connection con) throws SQLException {
                    PreparedStatement ps= con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                    //ps.setInt(1, pet.getU_id());
                    ps.setString(1, commodity.getC_price());
                    ps.setString(2, commodity.getC_desc());
                    ps.setString(3, commodity.getType());
                    return ps;
                }}, keyHolder);

            return keyHolder.getKey().intValue(); //返回自动增加的id号
        }catch(Exception e){
            e.printStackTrace();
            return 0;
        }
    }

    @Override
    public int updatePetHeadimgById(String c_id, String b) {
        String sql ="update commodity set c_img = ? where c_id = ?";
        int count = template.update(sql,b,Integer.parseInt(c_id));
        System.out.println("添加商品的图片："+count);
        return count;
    }

    @Override
    public List getAllCommoditiesList() {
        try{
            String sql ="select * from `commodity` ";
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
    public void deleteCommodityById(int c_id) {
        String sql = "delete from commodity where c_id = ?";
        int count = template.update(sql, c_id);
        System.out.println("删除成功"+count);
    }

    @Override
    public List getCommoditiesListByType(String type) {
        try{
            String sql ="select * from `commodity` where `type` = ?";
            List<Map<String, Object>> list = template.queryForList(sql,type);
            System.out.println(list);
            return list;
        } catch (
                DataAccessException e){
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List getCommoditiesListByMoHu(String mohu) {
        try{
            String sql ="select * from `commodity` where `type` like ? or c_desc like ?";
            List<Map<String, Object>> list = template.queryForList(sql,"%"+mohu+"%","%"+mohu+"%");
            System.out.println(list);
            return list;
        } catch (
                DataAccessException e){
            e.printStackTrace();
            return null;
        }
    }


}
