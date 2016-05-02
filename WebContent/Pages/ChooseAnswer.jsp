<%@page import="java.util.List"%>
<%@page import="com.service.RequesterService"%>
<%@page import="com.domain.Request"%>
<%@page import="com.domain.Answer"%>
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
<form class="input-append" action="../Answer" method="POST">				

<br>

<%
RequesterService serviceReq = new RequesterService();
Request requestH = serviceReq.getRequest((Integer.parseInt(request.getParameter("request"))));
//session.setAttribute("id_projet", requestH.getIdRequest());
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

<br>

 <fieldset>
 	 <fieldset style='border-color:#e44c65; border: solid 3px;'>
 		<legend>Instructions</legend>
   <table>
		 <tr>
		 <td><textarea name="instructions" style='width:300%; height: 200%' readonly >
		 <%=requestH.getInstruction() %>
		 </textarea>
		 </td>
		 </tr>
	</table>
 </fieldset>
 
 <br>
 <%
Session sessionH =  Hibernate.getSessionFactory().getCurrentSession();
 sessionH.beginTransaction();
List<Answer> answers =sessionH.createQuery("from Answer where idRequest='"+
 request.getParameter("request")+"'").list();
%>

<div id="passwTable">
<fieldset style="border-color:#e44c65; border: solid 3px;">
	<legend>Response</legend>'
	<% for(Answer answer :answers){ %>
	<div class ="div-request">
	<table width="100%">
	<tr>
	<td colspan="3" class="titre1">Worker: <%=answer.getIdWorker()%></td>
	</tr>
	<tr><td><textarea name="answer" readonly><%=answer.getAnswer() %></textarea></td></tr>
	</table>
	</div>
	<br>
	 <%} %>		 
</fieldset>
</div>


 </fieldset>
 
 <br>
<center>
<table id="Submit">

<tr><td>
<label class="custom-file-upload">
	<a style='color:white' href="<%= request.getContextPath()%>/Pages/HomeWorker.jsp">Back to Home</a></label>

</td></tr>
</table>
</center>

<script type="text/javascript">
function take_It() {
	document.getElementById('passwTable').innerHTML = ''
	+'<fieldset style="border-color:#e44c65; border: solid 3px;">'
	+'<legend>Response</legend>'
	+' '
	+'		<tr>'
	+'		 <td><textarea name="answer" placeholder="Write your Answer"></textarea>'
	+'		 </td>'
	+'		 </tr>'
	+' '
	+'</fieldset>'
	+'</table></div>';
	
	document.getElementById('Submit').innerHTML = '<tr><td>'
		+'<input style="width: 150px;" type="submit" value="Confirm" class="button special"/>'
		+'</td></tr>';
	}		
</script>

<%@ include file="/include/footer.jsp" %>
</form>
</div>
</div>
</body>
</html>