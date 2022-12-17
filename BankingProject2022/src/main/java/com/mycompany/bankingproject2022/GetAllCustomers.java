package com.mycompany.bankingproject2022;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mycompany.bankingproject2022.database_access.DBLoader;
import com.mycompany.bankingproject2022.pojo.Customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class GetAllCustomers extends HttpServlet 
{
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();
        
        try
        {
            ResultSet rs = DBLoader.executeSQL("select * from customer");
          
            ArrayList<Customer> al = new ArrayList<>();
            
            while(rs.next())
            {
                int account_number = rs.getInt("account_number");
                 String first_name = rs.getString("first_name");
                 String last_name = rs.getString("last_name");
                 String address = rs.getString("address");
                 String ssn = rs.getString("ssn");
                 String mobile = rs.getString("mobile");
                 String email = rs.getString("email");
                 String pin = rs.getString("pin");
                 String status = rs.getString("status");
                 float balance = rs.getFloat("balance");
                
                 Customer customer = new Customer(account_number, first_name, last_name, address, ssn, mobile, email, pin, status, balance);
                 
                 al.add(customer);
            }
            
            // Convert to JSON and USE
            ObjectMapper objectmapper = new ObjectMapper();
        
            String ans = objectmapper.writeValueAsString(al);
        
            System.out.println(ans);
            
            out.println(ans);
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
    }

}
