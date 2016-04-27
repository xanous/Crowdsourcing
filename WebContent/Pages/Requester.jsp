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
    <h2>Worker</h2>
  </header>
	<ul>
    <li tabindex="0" class="icon-dashboard"><span><a href="<%= request.getContextPath()%>/Pages/Requester.jsp" style='text-decoration: none;color:white;'>Categorization Project</a></span></li>
    <li tabindex="0" class="icon-customers"><span>Provide Instructions</span></li>
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
								<!--  <a href="#" class="image fit"><img src="<%= request.getContextPath()%>/template/css/images/work.jpg" alt="" /></a>-->
<form class="input-append" action="<%= request.getContextPath()%>/include/next1.jsp" method="POST">
 <fieldset>
 <legend style='padding-left:80px;'>Name of the project</legend>
 
   <label for="text" style='padding-left:80px;'>What would you like to call your project?</label>
  <p style='padding-left:80px;'><input type="text" name="nameproject" id="text" placeholder="Type the name of your project"></p>
  <legend style='padding-left:80px;'>Category</legend>
  <label for="text" style='padding-left:80px;'>What's the category of your question?</label>
  <div class="form__field" style='padding-left:80px;'>
          <SELECT name="category" size="1" id="selection" style="color:#fff;background-color: #3b4148;">
            <OPTION>IT / Telecom</OPTION>
            <OPTION>agri</OPTION>
            <OPTION>Studies and consultancy</OPTION>
            <OPTION>Commerce /Distribution</OPTION>
            <OPTION>Pharmaceutical industry</OPTION>
            <OPTION>Transport / Logistics</OPTION>
            <OPTION>Chemistry / Parachemistry</OPTION>
            <OPTION>Electronics / Electricity</OPTION>
            <OPTION> Bank</OPTION>
            <OPTION>Food</OPTION>
            <OPTION>Autres</OPTION>
            </SELECT> <br>
        </div>
        <label for="text" style='padding-left:80px;'>Others:</label>
          
   <div class="container" style='padding-left:80px;'>
	<div class="row">
		<input type="hidden" name="count" value="1" />
        <div class="control-group" id="fields">
            <div class="controls" id="profs"> 
               
                 <div style="display: flex;width: 431px;padding: 0.5em 0em;margin: 0 0 1em 0;">    
                 <input autocomplete="off" class="input" id="field1" name="field1" type="text" placeholder="Type another category" data-items="8" style="flex-grow: 1;"/>
                 <button id="b1" class="btn add-more" type="button" style="margin-left: 10px;padding: 0 1em;">+</button></div>
            </div>
        </div>
	</div>
</div>
     
<p style='padding-left:80px;'><input type="submit" value="next" class="button special"/> </p>

<div style='margin-left:1.5cm;'><progress max=100 value=40></progress></div>
 						
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