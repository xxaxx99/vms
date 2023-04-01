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

@WebServlet("/parkcarinfo/update")
public class ParkcarinfoUpdateServlet extends HttpServlet {
    ParkcarinfoService parkcarinfoService = new ParkcarinfoServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer parkNo = Integer.valueOf(req.getParameter("parkNo"));
        Integer allspace = Integer.valueOf(req.getParameter("allspace"));
        Integer occupied = Integer.valueOf(req.getParameter("occupied"));
        Parkcarinfo parkcarinfo = new Parkcarinfo();
        try {
            parkcarinfo.setParkNo(parkNo);
            parkcarinfo.setAllspace(allspace);
            parkcarinfo.setOccupied(occupied);
            int update = parkcarinfoService.updateById(parkcarinfo);
            req.setAttribute("parkcarinfo",parkcarinfo);
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/parkcarinfo/query");
        return;
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer parkNo = Integer.valueOf(req.getParameter("parkNo"));
        try {
            Parkcarinfo parkcarinfo = parkcarinfoService.findById(parkNo);
            req.setAttribute("parkcarinfo",parkcarinfo);
        }
        catch (SQLException throwables){
            throwables.printStackTrace();
        }
            req.getRequestDispatcher("/jsp/parkcarinfo/modify.jsp").forward(req,resp);
        return;
    }
}
