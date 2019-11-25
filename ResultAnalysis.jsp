<!DOCTYPE html>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.util.DbConnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title><%@include file="title.jsp" %></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Performance Analysis Overview",
		
	},
	data: [{
		type: "pie",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: 30, label: "Maths"},
			{y: 35, label: "Drawing"},
			{y: 15, label: "GK"},
			{y: 10, label: "English"},
		]
	}]
});
chart.render();

}
</script>
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
<!--       <li><a href="#">Inform To Parents</a></li> -->
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


					<!--  <h2>Performance</h2> -->

					<%
				String maths = "";
				String drawing = "";
				String gk = "";
				String english = "";
				String userid = request.getParameter("id");
		        Connection con =DbConnection.getConnection();
				PreparedStatement ps = con.prepareStatement("select * from result where class="+request.getParameter("clas"));
				//ps.setString(1, userid);
				ResultSet rs = ps.executeQuery();
				if(rs.next())
				{
					maths = rs.getString("Avg(maths)");
					drawing = rs.getString("Avg(drawing)");
					gk = rs.getString("Avg(gk)");
					english = rs.getString("Avg(english)");
				}
				%>

					<div id="chartContainer" style="height: 400px; width: 300;"></div>
					<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

					<table align="center">
						<td align="center"><a href="Analysis.jsp"><input
								type="button" name="Back to selection page"
								value="Back to selection page" /></a></td>
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