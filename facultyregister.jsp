<!DOCTYPE html>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title><%@include file="title.jsp" %></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

<script>
function AllowAlphabet() {
    if (!ureg.fname.value.match(/^[a-zA-Z]+$/)
            && ureg.fname.value != "") {
    	ureg.fname.value = "";
    	ureg.fname.focus();
        alert("Please Enter only alphabet in text");
    }
    
    if (!ureg.lname.value.match(/^[a-zA-Z]+$/) 
    		&& ureg.lname.value != "") {
    	ureg.lname.value = "";
    	ureg.lname.focus();
        alert("Please Enter only alphabets in text");
    }
    
    if (!ureg.address.value.match(/^[a-zA-Z]+$/)
            && ureg.address.value != "") {
    	ureg.address.value = "";
    	ureg.address.focus();
        alert("Please Enter only alphabet in text");
    }
}

function Validate()
{ 
    var y = document.ureg.mobile.value;
   
   if(isNaN(y)||y.indexOf(" ")!=-1)
   {
	   
	   ureg.mobile.value="";
	   ureg.mobile.focus();
      alert("Enter numeric value");
      return false;
   }
    if (ureg.mobile.value.length!=10)
   {
        alert("enter 10 digits");
        return false;
   } 
   
   if (!y.match(/^[0-9]+$/) 
   		&& y != "") {
   	y = "";
   	ureg.mobile.focus();
       alert("Please Enter only Digits in text");
   }
}

function validEmail() {
	var mail = document.ureg.email.value;
	if (mail == "") {
		document.ureg.email.focus();
		document.ureg.email = "";
		alert("Enter  Email id");

		return false;
	}
	if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(mail)) {
	} else {
		document.ureg.email.focus();
		document.ureg.email = "";
		alert("Enter Valid Email id");

		return false;
	}
}
</script>

</head>
<body id="top">
<%
if(request.getParameter("present")!=null){
	out.println("<script>alert('Failed to Registration.......')</script>"); 
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
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="studentlogin.jsp">Student</a></li>
      <li><a href="teacherlogin.jsp">Teacher</a></li>
      <li><a href="principlelogin.jsp">Principle</a></li>
      
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
         
        <h2>Faculty Register</h2>
			
			
			<form action="facultyregister" name="ureg" id="ureg" method="post">
			<table>
			<tr>
			<td>First Name : </td>
			<td><input type="text" name="fname" onblur="AllowAlphabet()" required></td>
			</tr>
			<tr>
			<td>Last Name : </td>
			<td><input type="text" name="lname" onblur="AllowAlphabet()" required></td>
			</tr>
			<tr>
			<td>Gender : </td>
			<td><select name="gender">
			<option value="">---Select---</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			</select></td>
			</tr>
			<tr>
			<td>Date Of Birth : </td>
			<td><input type="date" name="dob" required></td>
			</tr>
			<tr>
			<td>Email : </td>
			<td><input type="text" name="email" onblur="validEmail(email)" required></td>
			</tr>
			<tr>
			<td>Mobile : </td>
			<td><input type="text" name="mobile" maxlength="10" required></td>
			</tr>
			<tr>
			<td>Address : </td>
			<td><input type="text" name="address" onblur="AllowAlphabet()" required></td>
			</tr>
			
			<tr>
			<td>Password : </td>
			<td><input type="password" name="password" maxlength="5" required></td>
			</tr>
			<tr>
			<td></td>
			<td><input type="submit" value="Register" ></td>
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