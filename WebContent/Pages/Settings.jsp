<%@page import="com.domain.Requester"%>
<%@page import="com.domain.Worker"%>
<%@page import="com.domain.User"%>
<%@page import="com.service.UserService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page of creating project</title>
<meta charset="UTF-8">
<%@ include file="/include/css2.jsp" %>
<link rel="stylesheet" href="<%= request.getContextPath()%>/MenuCreateProjet/css/style.css">
<link rel="stylesheet" href="<%= request.getContextPath()%>/include/formRequest.css">

</head>
<body>
<%@ include file="/include/headerRequester.jsp" %>

<div id="main" class="wrapper style1">
					<div class="container">			

<br>
<% 	User user = null;
	
	session = request.getSession();
	UserService service = new UserService();
	Class c = session.getAttribute("class").equals("Worker") ? Worker.class : Requester.class;
	user = (User) service.getUserByLogin((String) session.getAttribute("login"), c);
	
	%>
 
 <fieldset class="table2">
	 <legend>My profil</legend>
	 <fieldset style='border-color:#e44c65; border: solid 3px;'>
	 	<legend>My name</legend>
		 <table>
			 <tr>
			 <td><label for="text" style='padding-left:10px;'>First Name:</label></td>
		 	 <td><label><%= user.getFirstName().toUpperCase().substring(0,1)
	 				 + user.getFirstName().substring(1)%></label>
		 	 </td>
			 </tr>
			 
			 <tr>
			 <td><label for="text" style='padding-left:10px;'>Last Name:</label></td>
			 <td><label><%= user.getLastName().toUpperCase().substring(0,1) 
					 + user.getFirstName().substring(1)%></label>
			 </td>
			 </tr>
		</table>
	 </fieldset>
	 <fieldset style='border-color:#e44c65; border: solid 3px;'>
	 	<legend>My password</legend>
	 	<% if(request.getAttribute("username_pass_error") != null) {
    	out.println("<div style='width: 30%;' class=\"error\"><center>"+request.getAttribute("username_pass_error")
    	+"</center></div>");
    	%>
    	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    	<script>
        jQuery(function($){
            $('#update').click();
        });
        </script>
    	<% }%>
	 	<form action="../PasswordUpdate" method="post">
	 	 <table id="passwTable">
			 <tr>
			 <td><label for="text" style='padding-left:10px;margin-top:10px;'>Password</label></td>
			 <td><input id="update" type="button" onclick="create_champ_update_pass()" value="Update"></td>
			 </tr>
		 </table>
		</form>
	 </fieldset>	 
		 
 </fieldset>
<script type="text/javascript">
function create_champ_update_pass() {
	document.getElementById('passwTable').innerHTML = '<tr><td><label for="text" style="padding-left:10px;margin-top:10px;"">Current : </label></td>'
	+'<td><input type="password" name="current"></td></tr>'
	+'<tr><td><label for="text" style="padding-left:10px;margin-top:10px;"">New : </label></td>'
	+'<td><input type="password" name="new"></td></tr>'
	+'<tr><td><label for="text" style="padding-left:10px;margin-top:10px;"">Re-tape new : </label></td>'
	+'<td><input type="password" name="reNew"></td></tr>'
	+'<tr><td colspan="2" style="text-align: center;"><input type="submit" class="submitSetting" value="Save"></td></tr>'
	;
	}
</script>
<%@ include file="/include/footer.jsp" %>
</div>
</div>
</body>
</html>