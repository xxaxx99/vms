package com.zhbit.servlet.Parkcarinfo;


import com.zhbit.pojo.Parkcarinfo;
import com.zhbit.service.Parkcarinfo.ParkcarinfoService;
import com.zhbit.service.Parkcarinfo.ParkcarinfoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/parkcarinfo/query")
public class ParkcarinfoListServlet extends HttpServlet {
    ParkcarinfoService parkcarinfoService = new ParkcarinfoServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        List<Parkcarinfo> parkcarinfoList;
        try {
            String keyword = req.getParameter("keyword");
            parkcarinfoList=parkcarinfoService.list(keyword);

            req.setAttribute("keyword",keyword);
            req.setAttribute("parkcarinfoList",parkcarinfoList);
            req.getRequestDispatcher("/jsp/parkcarinfo/index.jsp").forward(req,resp);


        }
        catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }
}
