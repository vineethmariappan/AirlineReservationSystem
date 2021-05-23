<%-- 
    Document   : tickets
    Created on : 20 May, 2021, 11:25:18 AM
    Author     : vinee
--%>

<%@page import="java.sql.*"%>
<%@page import="com.servlets.db.mySqlCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Tickets</title>
                   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
                <!-- Latest compiled and minified CSS -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>

    </head>
    <body>
            <nav class="navbar fixed-top navbar-expand-lg bg-dark">
  <a class="navbar-brand" href="#">AirLine Reservation System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="reservation.jsp">Reservation</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="tickets.jsp">Cart</a>
      </li>
   
  
  </div>
</nav>
        <br>
         <br>
          <br>
           
           
        <h1>Your Tickets</h1>
        <%
//               HttpSession session = request.getSession(true);
                    Connection con = mySqlCon.connect();
                    Statement stmt = con.createStatement();
                    int user_id=-1;
            String email = (String)session.getAttribute("email");
            String query_user = "select user_id from users where email =?";
            PreparedStatement stmt1=con.prepareStatement(query_user);
            stmt1.setString(1,email);
            ResultSet rs=stmt1.executeQuery();
            if(rs.next()){
                user_id = rs.getInt("user_id");
         
            }
               String query_tickets = "select airline_id,a.city  as source_city, b.city as dest_city,date from user_tickets inner join airlines al on al.airline_id=user_tickets.airlines_id inner join airports a on al.source_airport_id=a.airport_id inner join airports b on b.airport_id=al.destination_airport_id where user_id=?";
            stmt1=con.prepareStatement(query_tickets);
            stmt1.setInt(1,user_id);
            rs=stmt1.executeQuery();
             while (rs.next()) {
                out.println("<li class='list-group-item'>"+rs.getString("source_city").toUpperCase()+ "  <b>TO</b>  " + rs.getString("dest_city").toUpperCase()+"  <b>ON</b>  " +rs.getString("date") +"</li>");
            }

            %>
    </body>
</html>
