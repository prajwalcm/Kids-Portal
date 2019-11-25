<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.Connection"%>
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title><%@include file="title.jsp" %></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">



<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
    
    <div id="logo" class="fl_left">
     <%@include file="logo.jsp" %>
    </div>
    
    
  </header>
</div>



<div class="wrapper row2">
  <nav id="mainav" class="hoc clear"> 
    
    <ul class="clear">
      <li class="active"><a href="principlehome.jsp">Home</a></li>
      <li><a href="studentreport.jsp">Students Report</a></li>
	  <li><a href="Analysis.jsp">Class wise Analysis</a></li> 
      <li><a href="index.jsp?logout">Logout</a></li>
      
    </ul>
    
  </nav>
</div>



<div  style="background-image:url('images/kids2.jpg'); height: 200px">
  <div id="pageintro" class="hoc clear"> 
    
    
  </div>
</div>



<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    
    <article class="group">
      <div class="group btmspace-80">        
      
        <div class="three_quarter" align="center">
         
         
             <h2>Student Information</h2>
				
		<table>
		<tr>
		<th>SRNO</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gender</th>
		<th>hate Of Birth</th>
		<th>Contact Number</th>
		<th>Address</th>
		<th>Marks</th>
		<th>Graph</th>
		</tr>
		
		<%
		int srno=1;
		Connection con = DbConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from studentreg");
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{
			%>
			<tr>
			<td><%=srno++ %></td>
			<td><%=rs.getString("fname") %></td>
			<td><%=rs.getString("lname") %></td>
			<td><%=rs.getString("gender") %></td>
			<td><%=rs.getString("dob") %></td>
			<td><%=rs.getString("mobile") %></td>
			<td><%=rs.getString("address") %></td>
			<td><a href="marks.jsp?id=<%=rs.getString("id") %>"><u>See Marks</u></a></td>
			<td><a href="report.jsp?id=<%=rs.getString("id") %>"><u>See Graph</u></a></td>
			<%
		}
		%>
		</tr>
		</table>
		
			
         
         
         
        </div>
      </div>
      
    </article>
    
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>















<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    
    <p class="fl_left">Copyright &copy; 2017 - All Rights Reserved.</p>
   
    
  </div>
</div>



<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>