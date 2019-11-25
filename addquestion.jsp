<!DOCTYPE html>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title><%@include file="title.jsp" %></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<%
if(request.getParameter("insert")!=null)
{
	out.println("<script>alert('Question Added Successfully')</script>");
}
%>

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
      <li><a href="#">Add Questions</a></li>
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
         
         
         <h2>Add Questions</h2>
				
		<form action="SentFiles" method="post" enctype="multipart/form-data">
		<table>
		<tr>
		<td>Select Subject : </td>
		<td>
		<select name="subject" required="required">
		<option value="">---Select---</option>
		<option value="drawing">Drawing</option>
		<option value="maths">Maths</option>
		<option value="english">English</option>
		<option value="gk">GK</option>		
		</select>
		</td>
		</tr>
		<tr>
		<td>Enter Question : </td>
		<td><textarea rows="3" cols="25" name="question" required="required"></textarea></td>
		</tr>
		<tr>
		<td>Choice A : </td>
		<td><input type="file" name="file1" id="file1" required="required"/></td>
		</tr>
		<tr>
		<td>Choice B : </td>
		<td><input type="file" name="file2" id="file2" required="required"/></td>
		</tr>
		<tr>
		<td>Choice C : </td>
		<td><input type="file" name="file3" id="file3" required="required"/></td>
		</tr>
		<tr>
		<td>Choice D : </td>
		<td><input type="file" name="file4" id="file4" required="required"/></td>
		</tr>
		<tr>
		<td>Answer : </td>
		<td><input type="file" name="ans" id="ans" required="required"/></td>
		</tr>
		<tr>
		<td></td>
		<td><input type="submit" value="Add"></td>
		</tr>
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