package com.mycompany.bankingproject2022;

import com.mycompany.bankingproject2022.database_access.DBLoader;

import java.io.*;

import java.sql.ResultSet;

import javax.servlet.ServletException;

import javax.servlet.http.*;

public class AddCustomer extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
         
        try 
        {
            //int account_number;
            
            String first_name = request.getParameter("first_name");
            String last_name = request.getParameter("last_name");
            String address = request.getParameter("address");
            String ssn = request.getParameter("ssn");
            String mobile = request.getParameter("mobile");
            String email = request.getParameter("email");
            String pin = request.getParameter("pin");
            String status = "ACTIVE";
            float balance = 0.0f;
            
            ResultSet rs = DBLoader.executeSQL("select * from customer");
            
            rs.moveToInsertRow();
            
            rs.updateString("first_name", first_name);
            rs.updateString("last_name", last_name);
            rs.updateString("address", address);
            rs.updateString("ssn", ssn);
            rs.updateString("mobile", mobile);
            rs.updateString("email", email);
            rs.updateString("pin", pin);
            rs.updateString("status", status);
            rs.updateFloat("balance", balance);
            
            rs.insertRow();
            
            ResultSet rs2 = DBLoader.executeSQL("select max(account_number) as latest from Customer");
            
            rs2.next();
            int account_number = rs2.getInt("latest");
            
            response.sendRedirect("addcustomersuccess.jsp?account_number="+account_number);
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            
            out.println(ex.toString());
        }
    }

}
