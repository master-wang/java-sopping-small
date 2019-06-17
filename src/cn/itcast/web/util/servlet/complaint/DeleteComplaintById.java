package cn.itcast.web.util.servlet.complaint;

import cn.itcast.web.util.dao.CommodityDao;
import cn.itcast.web.util.dao.ComplainDao;
import cn.itcast.web.util.dao.impl.CommodityDaoimpl;
import cn.itcast.web.util.dao.impl.ComplainDaoimpl;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/deleteComplaintById")
public class DeleteComplaintById extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String c_id =req.getParameter("c_id");
        ComplainDao dao = new ComplainDaoimpl();

        dao.deleteComplaintById(Integer.parseInt(c_id));

        Map<String,Object> mapa = new HashMap<String, Object>();
        mapa.put("stadus","ok");
        mapa.put("msg","获取所有我的宠物");
        mapa.put("list",null);
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),mapa);
    }
}
