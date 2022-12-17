<%@page import="com.mycompany.bankingproject2022.pojo.Customer"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mycompany.bankingproject2022.database_access.DBLoader"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/bootstrap.css" rel="stylesheet"/>
    <style>
        .footer{
            padding:40px
        }
    </style>
    </head>
    <body>
        
        <h1>New Customer Added Successfully !!!</h1>
        
        <%
            try
            {
                int account_number = Integer.parseInt(request.getParameter("account_number"));
                
                ResultSet rs = DBLoader.executeSQL("select * from customer where account_number="+account_number);
                
                if(rs.next())
                {
                    String first_name = rs.getString("first_name");
                    String last_name = rs.getString("last_name");
                    String address   = rs.getString("address");
                    String ssn = rs.getString("ssn");
                    String mobile = rs.getString("mobile");
                    String email = rs.getString("email");
                    String pin = rs.getString("pin");
                    String status = rs.getString("status");
                    float balance = rs.getFloat("balance");
               
             %>       
                    
                   <table class="table table-bordered ">
            <thead>
            <th>Account Number</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>ssn</th>
            <th>Mobile</th>
            <th>Email</th>
            <th>pin</th>
            <th>status</th>
            <th>Balance</th>
            </thead>
            <tbody> 
                 <tr>
                    <td><%=first_name%> </td>
                    <td><%=last_name%> </td>
                    <td><%=address%> </td>
                    <td><%=ssn%> </td>
                    <td><%=mobile%> </td>
                    <td><%=email%> </td>
                    <td><%=pin%> </td>
                    <td><%=status%> </td>
                    <td><%=balance%> </td>
                </tr>
                </tbody>
            </table>
             <%       
                    
                     
                }
            }
            catch(Exception ex)
            {
               ex.printStackTrace();
            }
        
        %>
        
       
        
    </body>
</html>
