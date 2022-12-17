package com.mycompany.bankingproject2022;

import com.mycompany.bankingproject2022.database_access.DBLoader;

import java.io.*;
import java.sql.ResultSet;
import javax.servlet.*;
import javax.servlet.http.*;

public class CheckLogin extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       try
       {
            PrintWriter out = response.getWriter();
     
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
        
            String sql = "select * from admin where username=\'"+user+"\' and password=\'"+pass+"\'";
            
            System.out.println(sql);
            
            ResultSet rs = DBLoader.executeSQL(sql);
        
            HttpSession session = request.getSession();
            
            if(rs.next())
            {
                session.setAttribute("username", user);
                response.sendRedirect("success.jsp");
            }
            else
            {
                response.sendRedirect("failure.jsp");
            }
        
       }
       catch(Exception ex)
       {
           ex.printStackTrace();
       }
    }
}
