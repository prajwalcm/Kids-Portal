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
      <li class="active"><a href="studenthome.jsp">Home</a></li>
      <li><a href="exam.jsp">Attend Exam</a></li>
      <li><a href="#">Result</a></li>
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
         
         
         <h2>Student Home</h2>
			<form action="exam" method="post">
		<table>
		<%
		String exam =request.getParameter("exam");
		Connection con = DbConnection .getConnection();
		PreparedStatement ps = con.prepareStatement("select * from exam where subject=? order by rand() limit 10");
		ps.setString(1, exam);
		ResultSet rs = ps.executeQuery();
		int i=1;
		int j=1;
		while(rs.next())
		{
			
			%>
			<tr>
			<td><%=i++ %>)Question</td>
			<td><h1><%=rs.getString("question") %></h1></td>
			</tr>
			<tr>
			<td>A)<input type="radio" name="<%=j %>" value="<%=rs.getString("a")%>"></td><td><img alt="" src="exam/<%=rs.getString("aimage")%>" style="width: 50px;height: 50px"></td>
			<td>b)<input type="radio" name="<%=j %>" value="<%=rs.getString("b")%>"></td><td><img alt="" src="exam/<%=rs.getString("bimage")%>" style="width: 50px;height: 50px"></td>
			</tr>
			<tr>
			<td>C)<input type="radio" name="<%=j %>" value="<%=rs.getString("c")%>"></td><td><img alt="" src="exam/<%=rs.getString("cimage")%>" style="width: 50px;height: 50px"></td>
			<td>D)<input type="radio" name="<%=j %>" value="<%=rs.getString("d")%>"></td><td><img alt="" src="exam/<%=rs.getString("dimage")%>" style="width: 50px;height: 50px"></td>
			</tr>
			<tr><td><input type="hidden" name="id<%=j%>" value="<%=rs.getString("id")%>"></td></tr>
			<!-- <tr><td>&nbsp;</td></tr> -->
			<%
			j++;
		}
		%>
			<tr>
			<td><input type="hidden" name="exam" value="<%=exam%>"></td>
			<td><input type="submit" value="Submit"></td></tr>
         </table>
         </form>	
         
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