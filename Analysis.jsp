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
<!-- <script type= "text/javascript">

    function sendAjax() {
         
        var class= document.getElementById("class").value;

        document.location.href="Analysis.jsp?class="+class;
                
    }
</script> -->

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
	
	   <table border = "10" cellpadding = "5" cellspacing = "5" align="center">
        
					        <tr>
					        	<th>Sr.No.</th>
					            <th>Class Name</th>
					            <th>Students Status</th>
					            <!-- <th>Budget in Pie Chart</th> -->
					         </tr>
					         <th>01</th>
					         	<th>LKG</th>
					         	<th><a href="ResultAnalysis.jsp?class=lkg"><u>Click here to View</u></a></th>
					         	<!-- <th><a href="piechartbudget.jsp"><u>Click here to View</u></a></th> -->
					         </tr>
					         <tr>
					         	<th>02</th>
					         	<th>UKG</th>
					         	<th><a href="ResultAnalysis.jsp?class=ukg"><u>Click here to View</u></a></th>
					         	<!-- <th><a href="piechartbudget.jsp"><u>Click here to View</u></a></th> -->
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