<%@page import="com.mycompany.bankingproject2022.database_access.DBLoader"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view all accounts</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
    </head>
    <body>
        <%@include file="header.html" %>
     <br>
       
        <div class="table-responsive container">
         <h1>View All Accounts</h1>
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
        <%
             try
        {
            ResultSet rs = DBLoader.executeSQL("select * from customer");
         
            
            while(rs.next())
            {
            
            %>              
                <tr>
                    <td><%=rs.getInt("account_number")%> </td>
                    <td><%=rs.getString("first_name")%> </td>
                    <td><%=rs.getString("last_name")%> </td>
                    <td><%=rs.getString("address")%> </td>
                    <td><%=rs.getString("ssn")%> </td>
                    <td><%=rs.getString("mobile")%> </td>
                    <td><%=rs.getString("email")%> </td>
                    <td><%=rs.getString("pin")%> </td>
                    <td><%=rs.getString("status")%> </td>
                    <td><%=rs.getString("balance")%> </td>
                </tr>
            <%
                 }
            
         
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
            %>
            </tbody>
            </table>
        </div>
    </body>
</html>
