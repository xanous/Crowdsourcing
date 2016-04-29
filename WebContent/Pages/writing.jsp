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
</head>
<body>
<%@ include file="/include/headerRequester.jsp" %>

<div id="main" class="wrapper style1">
					<div class="container">
<nav>					
<ol class="track-progress" data-steps="3">
   <li class="done">
<<<<<<< HEAD
    <span><a href="<%= request.getContextPath()%>/Pages/FormRequester.jsp">Enter Informations</a></span>
=======
    <span><a href="<%= request.getContextPath()%>/Pages/FormRequester.jsp">Enter Information</a></span>
>>>>>>> master
     <i></i>
   </li><!--
--><li class="done">
     <span><a href="<%= request.getContextPath()%>/Pages/Writing/writing.jsp">Desgin Layout</a></span>
   </li><!--
--><li>
     <span><a href="#" onclick="MyFunction()">Preview and finish</a></span>
     <i></i>
   </li>
 </ol>
 </nav>
<hr size="20" style='background:#e44c65;'>	

<fieldset style='border-color:#e44c65; border-style: solid;padding-left:80px;background-color:white'>
 <legend>Name of the project</legend>
 
<p style='padding-left:10px;'><input type="text" name="nom" id="text" value="<%= request.getParameter("nameproject") %>"></p>
 </fieldset>					
<div  style='background-color:#525252;width: 1213px;height: 70px;'>Instructions</div>
   					
<<<<<<< HEAD
<form class="input-append" action="#" method="POST">
=======
<form class="input-append" action="" method="POST">
>>>>>>> master
 <fieldset style='border-color:#e44c65; border-style: solid;padding-left:80px;background-color:white'>
 <legend>Instructions</legend>
 
  <p style='padding-left:10px;'><textarea name="instructions"></textarea></p>
 </fieldset>
 
 <div  style='background-color:#525252;width: 1213px;height: 70px;'>Area for response</div>
 <fieldset style='border-color:#e44c65; border-style: solid;padding-left:80px;'>
 <legend>Response</legend>
 <label for="text" style='padding-left:10px;'>Write your Response</label>
  <p style='padding-left:10px;'><textarea name="instructions" readonly></textarea></p>
</fieldset>




<<<<<<< HEAD
<p style='padding-left:800px;margin-top:3%'><input type="submit" value="Save" class="button special"/>hh<button class="button special" style='height:37px;'>Preview</button></p>
=======
<p style='padding-left:800px;margin-top:3%'><input type="submit" value="Save" class="button special"/><button class="button special" style='height:37px;'>Preview</button></p>
>>>>>>> master

</form>
<%@ include file="/include/footer.jsp" %>

</body>
</html>