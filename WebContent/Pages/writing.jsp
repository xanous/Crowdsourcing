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

<%@ include file="/include/NavDesign.jsp" %>		
 
 <br>		
   					
 <fieldset>
 <legend>Instructions</legend>
   <table>
		 <tr>
		 <td><label for="text" style='padding-left:10px;'>Intructions:</label></td>
		 <td><textarea name="instructions" style='width:300%; height: 200%' ></textarea>
		 </td>
		 </tr>
		 </table>
 </fieldset>
 <br>
 <fieldset>
 <legend>Response</legend>
 <table>
		<tr>
		 <td><textarea placeholder="Write your Response" readonly></textarea>
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
</div>
</div>
</body>
</html>