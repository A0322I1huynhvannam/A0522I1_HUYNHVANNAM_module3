package com;

import java.io.IOException;

@javax.servlet.annotation.WebServlet(name = "ProductServlet",value = "/ProductServlet")
public class ProductServlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        double jvPrice = Double.parseDouble(request.getParameter("price"));
        double jvPercent = Double.parseDouble(request.getParameter("percent"));
        double discountAmount = jvPrice * jvPercent *0.01;
        double discountPrice = jvPrice - discountAmount;
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("discountPrice",discountPrice);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
