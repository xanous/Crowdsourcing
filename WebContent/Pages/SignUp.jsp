<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignIn</title>
<link rel="stylesheet" href="<%= request.getContextPath()%>/SignIn/css/style.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<style>
.error {
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}
</style>
</head>
<body>
<div class="main">
 <% if(request.getAttribute("username_pass_error") != null) {
    	out.println("<div class=\"error\"><center>"+request.getAttribute("username_pass_error")
    	+"</center></div>");
    	}%>
	<div class="social-icons">
		 <div class="col_1_of_f span_1_of_f"><a href="#">
		    <ul class='facebook'>
		    	<i class="fb"> </i>
		    	<li><a href="https://www.facebook.com/">Connect with Facebook</a></li>
		    	<div class='clear'> </div>
		    </ul>
		    </a>
		 </div>	
		 <div class="col_1_of_f span_1_of_f"><a href="#">
		    <ul class='twitter'>
		      <i class="tw"> </i>
		      <li><a href="https://twitter.com/">Connect with Twitter</a></li>
		      <div class='clear'> </div>
		    </ul>
		    </a>
		</div>
		<div class="clear"> </div>	
      </div>
      <h2>Or Signup with</h2>
		<form action="<%= request.getContextPath()%>/SignUp" method="POST">
		   <div class="lable">
		        <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" name="fname" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}"></div>
                <div class="col_1_of_2 span_1_of_2"><input type="text" class="text" name="lname" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></div>
                <div class="clear"> </div>
		   </div>
		   <div class="lable-2">
		        <input type="text" class="text" name="email" value="your@email.com " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'your@email.com ';}">
		        <input type="password" class="text" name="password" value="Password " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password ';}">
		   </div>
		   <div class="lable-2">
				<span class="custom-dropdown custom-dropdown--white">
				    <select name="type_account" class="custom-dropdown__select custom-dropdown__select--white">
				        <option>Requester</option>
				        <option>Worker</option>
				    </select>
				</span>
		</div>


		   
		   <h3>By creating an account, you agree to our <span class="term"><a href="#">Terms & Conditions</a></span></h3>
		   <div class="submit">
			  <input type="submit" onclick="myFunction()" value="Create account" >
		   </div>
		   <div class="clear"> </div>
		</form>
		</div>

</body>
</html>