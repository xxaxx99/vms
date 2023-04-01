package com.zhbit.servlet.Parkcarinfo;


import com.zhbit.service.Parkcarinfo.ParkcarinfoService;
import com.zhbit.service.Parkcarinfo.ParkcarinfoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/parkcarinfo/delete")
public class ParkcarinfoDeleteServlet extends HttpServlet {
    ParkcarinfoService parkcarinfoService = new ParkcarinfoServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Integer parkNo = Integer.valueOf(req.getParameter("parkNo"));
        try{
            parkcarinfoService.delete(parkNo);
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
        resp.sendRedirect(req.getContextPath()+"/parkcarinfo/query");
        return;
    }
}
