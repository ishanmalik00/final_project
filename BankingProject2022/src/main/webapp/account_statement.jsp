
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.mycompany.bankingproject2022.database_access.DBLoader"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Statement</title>
         <link href="css/bootstrap.css" rel="stylesheet"/>
    <style>
        .footer{
            padding:40px
        }
    </style>
    <%
        String account = request.getParameter("acc");
        String start = request.getParameter("start");
        String end = request.getParameter("end");
        %>
    </head>
    <body>
        <%@include file="header.html" %><br>
        <div class="container">
        <table class="table table-bordered ">
            <thead>
            <th>Transaction Type</th>
            <th>Amount</th>
            <th>Account_NO</th>
            <th>Date/Time</th>
            
            
            </thead>
            <tbody> 
         <%
            try
            {
                int account_number = Integer.parseInt(request.getParameter("acc"));
                //SimpleDateFormat input = new SimpleDateFormat("dd/MM/yyyy") ;
               
                //Date s = input.parse(start);
                //Date e = input.parse(end);
                
                //SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd");
                
                String sql = "select * from Transaction where  Account_No="+account_number+" AND date Between '"+start+"' and '"+end+"' Order By date DESC";
                
                System.out.println(sql);
                
                ResultSet rs = DBLoader.executeSQL(sql);
                
                while(rs.next())
                {
                    String type = rs.getString("transaction_type");
                    float Amount = rs.getFloat("Amount");
                    String Account_No   = rs.getString("Account_No");
                    String date = rs.getString("date");
                    long time = rs.getLong("time");
                   
                    
                   if(type.equals("deposit"))
                   {
                   
               %>
               <tr style="background-color: green; color: white">
                    <td><%=type%> </td>
                    <td><%=Amount%> </td>
                    <td><%=Account_No%> </td>
                    <td><%=  new Date(time).toString()  %> </td>
                   
                </tr>
               <%
                   }
else
{
                   %>
                  <tr style="background-color: red; color: white">
                    <td><%=type%> </td>
                    <td><%=Amount%> </td>
                    <td><%=Account_No%> </td>
                    <td><%=new Date(time).toString()%> </td>
                    
                   
                </tr>
          <%       
              }      
                     
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
