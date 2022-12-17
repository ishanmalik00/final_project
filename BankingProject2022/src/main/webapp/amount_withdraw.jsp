
<%@page import="com.mycompany.bankingproject2022.database_access.DBLoader"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Amount Withdraw</title>
         <link href="./css/bootstrap.css" rel="stylesheet" />
    <link href="./css/myStyle.css" rel="stylesheet" />
    <style>
      .footer {
        padding: 40px;
      }
    </style>
        <%
            String acc = request.getParameter("acc");
            %>
    </head>
    <body>
       <%@include file="header.html" %>
     <br>
       
        <div class="table-responsive container">
            <div class="table-responsive container">
        <h1>Account Details</h1>
            <table class="table table-bordered ">
            <thead>
            <th>Account Number</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Address</th>
            <th>ssn</th>
            <th>Mobile</th>
            <th>Email</th>
            <th>status</th>
            <th>Balance</th>
            </thead>
            <tbody> 
         

        <%
             try
        {
            ResultSet rs = DBLoader.executeSQL("select * from customer where account_number="+acc);
         
            
            if(rs.next())
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
                    
                    <td><%=rs.getString("status")%> </td>
                    <td><%=rs.getString("balance")%> </td>
                </tr>
                </tbody>
            </table>
                 <h1>Amount to Withdraw</h1>
                             <form method="post" action='./withdraw_amount'>
                     <label for="amount">Amount to Deposit</label>
                     <input
                         
                    type="text"
                    id="amount"
                    name="amount"
                    class="form-control"
                    placeholder="Enter amount"
                    />
                       <input type='number' id='acc' name='acc' class="form-control" hidden value='<%=acc%>'>
                     <button class="btn btn-primary btn-block">Go</button>
               
               
                          </form>
                 <%
                 }
            else
{

%>
<h1 style="text-align: center">Invalid Account Number </h1>

<%
            
                 }
            
         
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
            %>
       
              
        
               
      
                   
        </div>
    </body>
</html>
