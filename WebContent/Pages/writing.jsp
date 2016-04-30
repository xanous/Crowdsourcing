<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.domain.Request"%>
<%@page import="java.util.List"%>
<%@page import="com.util.Hibernate"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import ="org.hibernate.Session" %>
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
<nav>					
<ol class="track-progress" data-steps="3">
   <li class="done">
    <span><a href="<%= request.getContextPath()%>/Pages/FormRequester.jsp">Enter Information</a></span>
     <i></i>
   </li><!--
--><li class="done">
     <span><a href="<%= request.getContextPath()%>/Pages/writing.jsp">Desgin Layout</a></span>
   </li><!--
--><li>
     <span><a href="#" onclick="MyFunction()">Preview and finish</a></span>
     <i></i>
   </li>
 </ol>
 </nav>
<hr size="20" style='background:#e44c65;'>	

<fieldset>
 
<legend style='padding-left:5px;padding-right:5px;'>Name of the project</legend>
 
 <table> 
 	<tr> <td>
	  	<input type="text" name="nom" id="text" value="">
	  	</td>
  	</tr>
  	</table>

 </fieldset>	
 	
 	<br>
 			
<fieldset class="table2">
	<legend>Instructions</legend>
   					
<form class="input-append" action="#" method="POST">
  <table>
		 <tr>
		 <td>  <textarea name="instructions"></textarea>
		 </td>
		 </tr>
		 </table>
 </fieldset>
 <br>
 <fieldset>
 <legend>Response</legend>
 <table>
		
		 <td>  <textarea name="instructions" placeholder="Write your Response" readonly></textarea>
		 </td>
		 </tr>
		 </table>
</fieldset>




<center>
<table>
<tr>
<td colspan="2"><input style='width: 150px;' type="submit" value="Next" class="button special"/></td>
</tr>
</table>
</center>
</form>
<%@ include file="/include/footer.jsp" %>

</body>
</html>