
package com.mycompany.bankingproject2022;

import com.mycompany.bankingproject2022.database_access.DBLoader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class withdraw_amount extends HttpServlet 
{  float balance=0;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        float amount = Float.parseFloat(request.getParameter("amount"));
            int acc = Integer.parseInt(request.getParameter("acc"));
         
        try 
        {
           java.util.Date date = new java.util.Date();
            
            java.sql.Date sqldate = new java.sql.Date(date.getTime());
            //int account_number;
            
              ResultSet rsbalance = DBLoader.executeSQL("select * from customer where account_number="+acc);
            if(rsbalance.next())
            {
                balance = rsbalance.getFloat("balance");
            }
            else
            {
                response.sendRedirect("withdrawSuccess.jsp?message= Wrong Account Number");
            }
            
            
            if(amount<=balance)
            {
            ResultSet rs = DBLoader.executeSQL("select * from Transaction");
            
            rs.moveToInsertRow();
            
            rs.updateString("transaction_type", "withdraw");
            rs.updateFloat("amount", amount);
            rs.updateInt("account_no", acc);
            rs.updateDate("date", sqldate);
            rs.updateLong("time", System.currentTimeMillis());
            
            rs.insertRow();
            
            ResultSet rsupbalance = DBLoader.executeSQL("select * from customer where account_number="+acc);
            if(rsupbalance.next())
            {
                balance = balance-amount;
                rsupbalance.moveToCurrentRow();
                rsupbalance.updateFloat("balance", balance);
                rsupbalance.updateRow();
            }
             
              response.sendRedirect("withdrawSuccess.jsp?amount="+amount+"&balance="+balance);
            }
            else
            {
                response.sendRedirect("withdrawSuccess.jsp?message= Not Enough Balance");
            }
          
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
            
            out.println(ex.toString());
        }
    }

}
