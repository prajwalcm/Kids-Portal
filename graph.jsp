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
      <li class="active"><a href="teacherhome.jsp">Home</a></li>
      <li><a href="studentregister.jsp">Student Registration</a></li>
      <li><a href="addquestion.jsp">Add Questions</a></li>
<!--       <li><a href="#">Generate Questions Paper</a></li> -->
       <li><a href="studentinfo.jsp">Student Details</a></li>
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
         
         
         <h2>Performance</h2>
				
					<%
				String maths = "";
				String drawing = "";
				String gk = "";
				String english = "";
				String userid = request.getParameter("id");
				Connection con =DbConnection.getConnection();
				PreparedStatement ps = con.prepareStatement("select * from result where userid=?");
				ps.setString(1, userid);
				ResultSet rs = ps.executeQuery();
				if(rs.next())
				{
					maths = rs.getString("maths");
					drawing = rs.getString("drawing");
					gk = rs.getString("gk");
					english = rs.getString("english");
				}
				%>
		
		<script type="text/javascript">
		window.onload = function () {
			var chart = new CanvasJS.Chart("chartContainer", {
				title: {
					text: "Result Chart"
				},
				data: [{
					type: "column",
					dataPoints: [
						{ y: <%=maths%>, label: "Maths" },
						{ y: <%=drawing%>, label: "Drawing" },
						{ y: <%=gk%>, label: "GK" },
						{ y: <%=english%>, label: "English" },
					]
				}]
			});
			chart.render();
		}
	</script>
	<script src="canvasjs.min.js"></script>
				<div id="chartContainer" style="height: 500px; width: 600px;"></div>

         
         
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