<%@page import="com.service.RequesterService"%>
<%@page import="com.domain.Request"%>
<%@page import="com.util.Hibernate"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Page of creating project</title>
<%@ include file="/include/css2.jsp" %>
<link rel="stylesheet" href="<%= request.getContextPath()%>/MenuCreateProjet/css/style.css">
<link rel="stylesheet" href="<%= request.getContextPath()%>/include/formRequest.css">

</head>
<body>
<%@ include file="/include/headerRequester.jsp" %>

<div id="main" class="wrapper style1">
					<div class="container">
					
<%@ include file="/include/NavPreview.jsp" %>					

<br>

<%
RequesterService serviceReq = new RequesterService();
Request requestH = serviceReq.getRequest((Integer)session.getAttribute("id_proj"));
session.removeAttribute("id_proj");
%>
<div class ="div-request">
<table width="100%">
	<tr>
	<td colspan="3" class="titre1"><%out.print(requestH.getNomprojet());%></td>
	</tr>
	<tr>
	<td class="td1"><label>Requester: <%out.print(requestH.getNomRequester()); %></label></td>
	<td class="td2"><label>Duration: <%out.print(requestH.getTimeAllottedAssignment()); %></label></td>
	<td class="td3"><label>Reward: <%out.print(requestH.getRewardSubmission()); %>€</label></td>
	</tr>
</table>

</div>

 <fieldset>
 	<legend>Request preview</legend>
 	 <fieldset style='border-color:#e44c65; border: solid 3px;'>
 		<legend>Instructions</legend>
   <table>
		 <tr>
		 <td><textarea name="instructions" style='width:300%; height: 200%' ></textarea>
		 </td>
		 </tr>
		 </table>
 </fieldset>
 <br>
 <fieldset style='border-color:#e44c65; border: solid 3px;'>
 <legend>Response</legend>
 <table>
		<tr>
		 <td><textarea placeholder="Write your Response" readonly></textarea>
		 </td>
		 </tr>
		 </table>
</fieldset>
 </fieldset>
 
 <br>
<center>
<table>
<tr><td>
<form class="input-append" action="<%= request.getContextPath()%>/Pages/RequesterProjects.jsp" method="POST">
<input style='width: 150px;' type="submit" value="Confirm" class="button special"/>
</form>
</td>
<td>
<form class="input-append" action="<%= request.getContextPath()%>/Pages/HomeRequester.jsp" method="POST">
<input style='width: 150px;' type="submit" value="Cancel" class="button special"/>
</form>
</td></tr>
</table>
</center>


<%@ include file="/include/footer.jsp" %>
</div>
</div>
</body>
</html>