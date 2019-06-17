package cn.itcast.web.util.servlet.commodity;

import cn.itcast.web.util.dao.CommodityDao;
import cn.itcast.web.util.dao.impl.CommodityDaoimpl;
import cn.itcast.web.util.domain.Commodity;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/addCommodity")
public class AddCommodity extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("application/json;charset=utf-8");
        String parm = getParm(req);
        System.out.println(parm);
        ObjectMapper mapper = new ObjectMapper();

        Commodity commodity = null;
        try {
            commodity = mapper.readValue(parm, Commodity.class);
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(commodity);
        CommodityDao dao = new CommodityDaoimpl();
        int c_id = dao.addMyNewCommodity(commodity);
        System.out.println("添加的商品id为："+c_id);

        Map<String,Object> mapa = new HashMap<String, Object>();
        mapa.put("stadus","ok");
        mapa.put("code",1);
        mapa.put("msg","添加商品成功！！");
        mapa.put("c_id",c_id);
        ObjectMapper mapperd = new ObjectMapper();
        mapperd.writeValue(resp.getWriter(),mapa);
    }

    public static String getParm(HttpServletRequest request) {
        BufferedReader br = null;
        try {
            br = new BufferedReader(new InputStreamReader(request.getInputStream(), "UTF-8"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String line = null;
        StringBuilder sb = new StringBuilder();
        try {
            while ((line = br.readLine()) != null) {
                sb.append(line);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return sb.toString();
    }
}
