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
import java.util.List;
import java.util.Map;

@WebServlet("/updateOrdertrue")
public class UpdateOrdertrue extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String o_id =req.getParameter("o_id");
        OrdersDao dao = new OrdersDaoimpl();

        Map<String,Object> mapa = new HashMap<String, Object>();
        dao.updateOrdertrue(Integer.parseInt(o_id));
        mapa.put("stadus","ok");
        mapa.put("msg","获取我的购物车成功！！");
        mapa.put("list",null);

        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),mapa);
    }
}
