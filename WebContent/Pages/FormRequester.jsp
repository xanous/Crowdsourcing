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
    <span><a href="<%= request.getContextPath()%>/Pages/FormRequester.jsp">Enter Informations</a></span>
     <i></i>
   </li><!--
--><li class="done">
     <span><a href="<%= request.getContextPath()%>/Pages/writing.jsp">Desgin Layout</a></span>
   </li><!--
--><li>
     <span><a href="#">Preview and finish</a></span>
     <i></i>
   </li>
 </ol>
 </nav>
<hr size="20" style='background:#e44c65;'>						
<div  style='background-color:#525252;width: 1213px;height: 70px;'>Give a name To your Project</div>
   					
<form class="input-append" action="<%= request.getContextPath()%>/Pages/writing.jsp" method="POST">
 <fieldset style='border-color:#e44c65; border-style: solid;padding-left:80px;'>
 <legend>Name of the project</legend>
 <label for="text" style='padding-left:10px;'>What would you like to call your project?</label>
  <p style='padding-left:10px;'><input type="text" name="nameproject" id="text" placeholder="Type the name of your project"></p>
 </fieldset>
 <div  style='background-color:#525252;width: 1213px;height: 70px;'>Describe your Hit to Workers</div>
   <fieldset style='border-color:#e44c65; border-style: solid;padding-left:80px;'>
 <legend>Description of the Hit</legend>
 <label for="text" style='padding-left:10px;'>Title</label>
  <p style='padding-left:10px;'><input type="text" name="nameproject" id="text" placeholder="Type the Title of your Hit"></p>
  <label for="text" style='padding-left:10px;'>Description</label>
  <p style='padding-left:10px;'><input type="text" name="nameproject" id="text" placeholder="Type a description for your Hit"></p>
 <label for="text" style='padding-left:10px;'>KeyWords</label>
  <p style='padding-left:10px;'><input type="text" name="nameproject" id="text" placeholder="Type some keywords for your Hit"></p>
 </fieldset>
 <div  style='background-color:#525252;width: 1213px;height: 70px;'>Setting Up your Hit</div>
 <fieldset style='border-color:#e44c65; border-style: solid;padding-left:80px;'>
 <legend>Setting of Hit</legend>
 <fieldset style='border-color:#e44c65; border: solid 3px;padding-left:80px;'>
 <legend>Calcul of Reward</legend>
<p style='padding-left:10px;'>Number of Items:<input type="number" id="nom1" min="1" max="10" value="1" ></p><br>
<p style='padding-left:10px;'>Number of workers per Item:<input type="number" id="nom2" min="1"  max="2" value="1"></p><br>
<p style='padding-left:10px;'>Number of Worker Submissions:<input type="text" id="nom3" placeholder="Number of Worker Submissions"></p>
<p style='padding-left:10px;'>Reward per Submission:<input type="number" id="nom4" value="0.01" min="0.01" step="0.01"></p>
<p style='padding-left:10px;'>Total Worker Rewards:<input type="text" id="nom5" placeholder="Total worker Rewards"></p>
<p style='padding-left:10px;'>Total Cost:<input type="text" id="nom6" placeholder="Total Cost"></p>
<div style='background-color:#c0c0c0;color:black;'>You Should Pay:
<p style='padding-left:10px;'><input type="text" id="nom7" style="font-weight:bold;"></p>
</div>
</fieldset>
<fieldset style='border-color:#c0c0c0; border: solid 3px;padding-left:80px;'>
 <legend>Time</legend>
<p style='padding-left:10px;'>Time allotted per assignment:<input type="number" id="nom8" min="1" value="1" ><SELECT name="selection" style='margin-left:50%;margin-top:1%; height: 30px;'>
            <OPTION selected="selected">Days</OPTION>
            <OPTION>Hours</OPTION>
            <OPTION>Minutes</OPTION>
            </SELECT></p>
<br>
<p style='padding-left:10px;'>HIT expires in:<input type="number" id="nom9" min="1" value="1"><SELECT name="selection" style='margin-left:50%;margin-top:1%; height: 30px;'>
            <OPTION selected="selected">Days</OPTION>
            <OPTION>Hours</OPTION>
            <OPTION>Minutes</OPTION>
            </SELECT></p><br>
<p style='padding-left:10px;'>Auto-approve and pay Workers in:<input type="number" min="1" value="1" name="nom10"><SELECT name="selection" style='margin-left:50%;margin-top:1%; height: 30px;'>
            <OPTION selected="selected">Days</OPTION>
            <OPTION>Hours</OPTION>
            <OPTION>Minutes</OPTION>
            </SELECT></p>
</fieldset>
</fieldset>
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

<p style='padding-left:800px;margin-top:3%'><input type="submit" value="Save" class="button special"/>
<button class="button special" style='height:35px;'>Design Layout</button></p>

</form>
<%@ include file="/include/footer.jsp" %>

</body>
</html>