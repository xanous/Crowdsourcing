<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My Template</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ include file="/include/css.jsp" %>
<link rel="stylesheet" href="<%= request.getContextPath()%>/menuRequester/css/demo.css">
</head>
<body class="landing">
<div id="page-wrapper">
<%@ include file="/include/headerRequester.jsp" %>
<nav class="menu" tabindex="0">
	<div class="smartphone-menu-trigger"></div>
  <header class="avatar">
		<img src="<%= request.getContextPath()%>/template/css/images/imaaage.jpg" />
    <h2>Worker</h2>
  </header>
	<ul>
    <li tabindex="0" class="icon-dashboard"><span>Categorization Project</span></li>
    <li tabindex="0" class="icon-customers"><span><a href="<%= request.getContextPath()%>/include/next1.jsp" style='text-decoration: none;color:white;'>Provide Instructions</a></span></li>
    <li tabindex="0" class="icon-users"><span>Provide Reward</span></li>
    
  </ul>
</nav>
<script src="<%= request.getContextPath()%>/menuRequester/js/script.js"></script>
<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2 style='font-family:Andalus;font-size:140%; font-weight:normal;background: rgba(39, 40, 51, 0.965);box-shadow: 0 0 0.25em 0 rgba(0, 0, 0, 0.25);line-height: inherit;'>create your project and don't worry about the results!</h2>
						</header>

						<!-- Content -->
							<section id="content">
								
<form>
 <fieldset>
 <legend style='padding-left:80px;'>Instructions </legend>
 
 
   <label for="text" style='padding-left:80px;'>Write here your Instructions</label>
 <p style='padding-left:80px;'> <textarea name="text" ></textarea> </p>
 <form>
 <fieldset>
 <legend style='padding-left:80px;'>Download </legend>
 
   <label for="text" style='padding-left:80px;'>Download a file for your project</label>
  <p style='padding-left:80px;'><input type="file" name="file"></p>
  
</fieldset>
   </form>
  <p style='padding-left:80px;font-family:"Times New Roman";'>Workers do best if you provide selection criteria on your categories:</p>
  <legend style='padding-left:80px;'>Category: Include/Exclude</legend>
	<%
	Enumeration enu = request.getParameterNames();
    while(enu.hasMoreElements()) {
    	String param = enu.nextElement().toString();
    	if(param.contains("field") || param.contains("category") ) 
  out.println("<p style='padding-left:80px;'><input type=\"text\" value=\""+request.getParameter(param)+"\"/></p>");
      // out.println("<button onclick=\"ma_fonction()\">"+request.getParameter(param)+"</button><br>");
   }
    
%>
<p style='padding-left:80px;'><a href="<%= request.getContextPath()%>/include/next2.jsp" class="button special">Next</a></p>
<div style='margin-left:1.5cm;'><progress max=100 value=70></progress></div>						
			
 </fieldset>
   </form>
 
</section>

	</div>
</div>

<%@ include file="/include/footer.jsp" %>
</div>
<%@ include file="/include/js.jsp" %>
</body>
</html>