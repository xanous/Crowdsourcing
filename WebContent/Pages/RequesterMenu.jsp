<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Page of Requester</title>
<%@ include file="../include/css.jsp" %>
 <link rel="stylesheet" href="<%= request.getContextPath()%>/menuRequester/css/demo.css">
</head>
<body class="landing">
<div id="page-wrapper">
<%@ include file="../include/headerRequester.jsp" %>

<nav class="menu" tabindex="0">
	<div class="smartphone-menu-trigger"></div>
  <header class="avatar">
		<img src="<%= request.getContextPath()%>/template/css/images/imaaage.jpg" />
    <h2>Requester</h2>
  </header>
	<ul>
    <li tabindex="0" class="icon-dashboard"><span><a href="<%= request.getContextPath()%>/Pages/FormRequester.jsp" style='text-decoration: none;color:white;'>Writing</a></span></li>
    <li tabindex="0" class="icon-customers"><span><a href="<%= request.getContextPath()%>/Pages/Upload/FormRequesterUp.jsp" style='text-decoration: none;color:white;'>Upload</a></span></li>
    <li tabindex="0" class="icon-users"><span><a href="<%= request.getContextPath()%>/Pages/FormRequester.jsp" style='text-decoration: none;color:white;'>Choose Response</a></span></li>
    <li tabindex="0" class="icon-users"><span><a href="<%= request.getContextPath()%>/Pages/FormRequester.jsp" style='text-decoration: none;color:white;'>Other</a></span></li>
   
  </ul>
</nav>

<script src="<%= request.getContextPath()%>/menuRequester/js/script.js"></script>
<!--  <div  style='padding-left:100px;position: absolute;top: 20%;width:30%;height:100%' ><img src="<%= request.getContextPath()%>/HomeRequester/images/start.jpg"/></div>-->

   
 </div>


<%@ include file="/include/js.jsp" %>

</body>
</html>