<%@page import="com.domain.Request"%>
<%@page import="java.util.List"%>
<%@page import="com.util.Hibernate"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import ="org.hibernate.Session" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page of creating project</title>
<%@ include file="/include/css2.jsp" %>
<link rel="stylesheet" href="<%= request.getContextPath()%>/MenuCreateProjet/css/style.css">
<link rel="stylesheet" href="<%= request.getContextPath()%>/include/workerHome.css">

<style>

/* Ajout de l'icône */
.html5_details, .html5_details > summary {}
.html5_details > summary::before {

}
.html5_details.open > summary::before {   }

</style>
</head>
<body>
<%@ include file="/include/headerRequester.jsp" %>


<div id="main" class="wrapper style1">
					<div class="container">
<%
Session sessionH =  Hibernate.getSessionFactory().getCurrentSession();
sessionH.beginTransaction();
String login = (String) session.getAttribute("login");
List<Request> requestH =sessionH.createQuery("from Request where nomRequester='"+login+"'").list();

for(Request requests :requestH){

%>
<div class ="div-request">

<details>
	<summary>					
<table width="100%">
	<tr>
	<td colspan="4" class="titre1"><%out.print(requests.getNomprojet()); %></td>
	</tr>
	<tr>
	<td class="td1"><label>Requester: <%out.print(requests.getNomRequester()); %></label></td>
	<td class="td2"><label>Date</label></td>
	<td class="td3"><label>Reward: <%out.print(requests.getNomRequester()); %>€</label></td>
	</tr>
	</table>
</summary>
<table width="100%">
	<tr>
	<td class="td1"><label>Keywords: <%out.print(requests.getTags()); %></label></td>
	<td class="td4" colspan="3"><label>Description: <%out.print(requests.getDescription()); %></label></td>
	</tr>
</table>
</details>
</div>
<br>
<%} %>

<br>
<!-- Code pour summury -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  <script src="details-summary.js"></script>

<script>
		$(document).ready(function() {
	
			if (!('open' in document.createElement('details'))) {
				$("details").addClass('html5_details').each(function() {
					$(this).find("summary").show().click(function() {
						$(this).siblings().toggle();
						$(this).parent('details').toggleClass('open');
					});
					var opened = $(this).attr("open");
					if(opened==undefined) {
						$(this).children().hide();
						$(this).children("summary").show();
					}
				});
			}
		});

	</script>

<%@ include file="/include/footer.jsp" %>

</div>
</div>
</body>
</html>