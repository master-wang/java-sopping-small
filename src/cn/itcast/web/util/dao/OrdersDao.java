package cn.itcast.web.util.dao;

import java.util.List;

public interface OrdersDao {
    void addOrders(int parseInt, int parseInt1);

    int findIsExit(int c_id, int u_id);

    void addOrdersBuy(int parseInt, int parseInt1);

    List getAllMyGoBuyCar(int u_id);

    void updateOrdertrue(int o_id);

    void orderDelById(int o_id);

    List getAllMyGoBuyHistory(int u_id);
}
