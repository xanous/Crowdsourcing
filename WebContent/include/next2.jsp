<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>My Template</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<%@ include file="/include/css2.jsp" %>
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
    <li tabindex="0" class="icon-customers"><span>Provide Instructions</span></li>
    <li tabindex="0" class="icon-users"><span><a href="<%= request.getContextPath()%>/include/next2.jsp" style='text-decoration: none;color:white;'>Provide Reward</a></span></li>
    
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
<div style='background:#808080;'>
<hr size="20" style='background:#e44c65;'>
<p style='padding-left:80px;'>Number of Items:<span  style='margin-left : 132px;'><input type="number" id="nom1" min="1" max="10" value="1" style="color:black;"></span></p><br>
<p style='padding-left:80px;'>Number of workers per Item:<span  style='margin-left : 50px;'><input type="number" id="nom2" min="1"  max="2" value="1" style="color:black;"></span></p><br>
<p style='padding-left:80px;'>Number of Worker Submissions:<span  style='margin-left : 25px;'><input type="text" id="nom3" size="16" style="color:black;background-color:white;"></span></p>
<p style='padding-left:80px;'>Reward per Submission:<span  style='margin-left : 82px;'><input type="number" id="nom4" value="0.01" min="0.01" step="0.01" style="color:black;"></span></p>
<p style='padding-left:80px;'>Total Worker Rewards:<span  style='margin-left : 93px;'><input type="text" id="nom5"  size="16" style="color:black;background-color:white;"></span></p>
<p style='padding-left:80px;'>Total Cost:<span  style='margin-left : 181px;'><input type="text" id="nom6"  size="16" style="color:black;background-color:white;"></span></p>

<div id="block">You Should Pay:
<input type="text" id="nom7"  size="16" style="color:black;background-color:white;margin-left:0.08cm;font-weight:bold">
</div>
<input type="submit" value="publish" class="button special" style='margin-left:18cm;'>
<p></p>
<div style='margin-left:17.5cm;'><progress max=100></progress></div>
<hr size="20" style='background:#e44c65;'>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
/*$(document).ready(function() {
 //this calculates values automatically
 sum();
 $("#nom1, #nom2,#nom3,#nom4,#nom5").on("keydown keyup", function() {
 sum();
 });
});*/

$('#nom1').keyup(function() {  
	sum();
});

$('#nom2').keyup(function() {  
	sum();
});
$('#nom3').keyup(function() {  
	sum();
});

$('#nom4').keyup(function() {  
	sum();
});
$('#nom5').keyup(function() {  
    sum();
});
$('#nom6').keyup(function() {  
    sum();
});

$('#nom7').keyup(function() {  
    sum();
});


 
function sum() {
 var num1 = document.getElementById('nom1').value;
 var num2 = document.getElementById('nom2').value;
 var num3 = document.getElementById('nom3').value;
 var num4 = document.getElementById('nom4').value;
 var num5 = document.getElementById('nom5').value;
 var result = parseInt(num1) * parseInt(num2);
 
 if (!isNaN(result)) {
 document.getElementById('nom3').value = result;
 }
 var result1=parseInt(num3) * parseFloat(num4);
 if (!isNaN(result1)) {
	 document.getElementById('nom5').value = result1+"EURO";
	 }
 if (!isNaN(result1)) {
	 document.getElementById('nom6').value = result1+"EURO";
 }
 if (!isNaN(result1)) {
	 document.getElementById('nom7').value = result1+"EURO";
 }
 }
</script>
</section>
</div>
</div>

<%@ include file="/include/footer.jsp" %>
</div>
<%@ include file="/include/js.jsp" %>
</body>
</html>