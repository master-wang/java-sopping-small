package cn.itcast.web.util.servlet.orders;

import cn.itcast.web.util.dao.OrdersDao;
import cn.itcast.web.util.dao.impl.OrdersDaoimpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/addOrdersBuy")
public class AddOrdersBuy extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String c_id =req.getParameter("c_id");
        String u_id =req.getParameter("u_id");
        OrdersDao dao = new OrdersDaoimpl();

        Map<String,Object> mapa = new HashMap<String, Object>();
        dao.addOrdersBuy(Integer.parseInt(c_id),Integer.parseInt(u_id));
        mapa.put("stadus","ok");
        mapa.put("msg","添加购物车成功！");
        mapa.put("list",null);

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),mapa);
    }
}
