<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My Template</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ include file="/include/css.jsp" %>
</head>
<body class="landing">
<div id="page-wrapper">
<%@ include file="/include/header.jsp" %>
<!-- Main -->
				<div id="main" class="wrapper style1">
					<div class="container">
						<header class="major">
							<h2>Ask your question and don't worry about the results!</h2>
						</header>

						<!-- Content -->
							<section id="content">
								<a href="#" class="image fit"><img src="<%= request.getContextPath()%>/template/css/images/work.jpg" alt="" /></a>
<form>
 <fieldset>
 <legend>Download </legend>
 
   <label for="text">Download a file for your project</label>
  <input type="file" name="file">
  
  
   <a href="#" class="button special">Send</a>
							
			
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