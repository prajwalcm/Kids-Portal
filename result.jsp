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
<style>
	table, th, td {
	border: 2px solid black;
	}
</style>
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
      <li class="active"><a href="studenthome.jsp">Home</a></li>
      <li><a href="examcategory.jsp">Attend Exam</a></li>
      <li><a href="result.jsp">Result</a></li>
      <li><a href="ResultAvgGraph.jsp">Result Avg.Graph</a></li>
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
         
         
         <h2>Subject wise Marks Obtain</h2>
        <table align="center" border="10"  cellpadding="5" cellspacing="5"> 
					
					<tr>
						<th>Sr.No.</th>
						<th>User Id</th>
						<th>Subject</th>
						<th>Marks</th>
					</tr>
			
				<%
				
				String userid = session.getAttribute("studid").toString();
				int srno=1;
				Connection con =DbConnection.getConnection();
				PreparedStatement ps = con.prepareStatement("select * from result where userid=?");
				ps.setString(1, userid);
				ResultSet rs = ps.executeQuery();
				if(rs.next())
				{
					%>
				
					<tr>
					  <td rowspan="6"><%=srno++ %></td>
					</tr>
					<tr>
					  <td rowspan="5"><%=rs.getString("userid") %></td>
					</tr>
					<tr>
					  <td>Math</td>
					  <td><%=rs.getString("maths") %></td>
					</tr>
					<tr>
					  <td>Drawing</td>
					  <td><%=rs.getString("drawing") %></td>
					</tr>
					<tr>
					  <td>GK</td>
					  <td><%=rs.getString("gk") %></td>
					</tr>
					<tr>
					  <td>English</td>
					  <td><%=rs.getString("english") %></td>
					
				<%						
				}					
				%>
					</tr>
					
					<!-- <tr>
					  <td colspan="6" align="center"><a href="Logout?done" style="font-size: 15px; font-weight: bold;"><input type="submit" class="button" name="submit" value="Done"/></a></td>
				</tr> -->
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