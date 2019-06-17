package cn.itcast.web.util.dao;

import cn.itcast.web.util.domain.Commodity;

import java.util.List;

public interface CommodityDao {
    int addMyNewCommodity(Commodity commodity);

    int updatePetHeadimgById(String c_id, String b);

    List getAllCommoditiesList();

    void deleteCommodityById(int parseInt);


    List getCommoditiesListByType(String type);

    List getCommoditiesListByMoHu(String mohu);
}
