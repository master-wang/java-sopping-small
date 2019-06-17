package cn.itcast.web.util.servlet.complaint;

import cn.itcast.web.util.dao.ComplainDao;
import cn.itcast.web.util.dao.OrdersDao;
import cn.itcast.web.util.dao.impl.ComplainDaoimpl;
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

@WebServlet("/addComplaint")
public class AddComplaint extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String c_desc =req.getParameter("c_desc");
        String u_id =req.getParameter("u_id");
        ComplainDao dao = new ComplainDaoimpl();
        Map<String,Object> mapa = new HashMap<String, Object>();
        dao.addComplaint(Integer.parseInt(u_id),c_desc);
        mapa.put("stadus","ok");
        mapa.put("msg","添加购物车成功！");
        mapa.put("list",null);


        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(resp.getWriter(),mapa);
    }
}
