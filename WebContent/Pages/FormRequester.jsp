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
<link rel="stylesheet" href="<%= request.getContextPath()%>/include/formRequest.css">

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

<br>
  					
<form class="input-append" action="<%= request.getContextPath()%>/AjouterRequest" method="POST">


 <fieldset>
 	<legend style='padding-left:5px;padding-right:5px;'>Name of the project</legend>
 	 <table> 
 	<tr><td>
	 	<label for="text" style='padding-left:10px;'>What would you like to call your project?</label>
	 	</td><td>
	  	<input type="text" name="nameproject" id="text" placeholder="Type the name of your project">
	  	</td>
  	</tr>
  	</table>
 </fieldset>
 
 <br>
 
 <fieldset class="table2">
	 <legend>Description of the Hit</legend>
	 <table>
		 <tr>
		 <td><label for="text" style='padding-left:10px;'>Title</label></td>
		 <td><input type="text" name="title" id="text" placeholder="Type the Title of your Hit"></td>
		 </tr>
		 
		 <tr>
		 <td><label for="text" style='padding-left:10px;'>Description</label></td>
		 <td><input type="text" name="description" id="text" placeholder="Type a description for your Hit"></td>
		 </tr>
		 
		 <tr>
		 <td><label for="text" style='padding-left:10px;'>KeyWords</label></td>
		 <td><input type="text" name="keywords" id="text" placeholder="Type some keywords for your Hit"></td>
		 </tr>
	 </table>
 </fieldset>

<br>
 
 <fieldset>
 <legend>Setting of Hit</legend>
 
	 <fieldset style='border-color:#e44c65; border: solid 3px;'>
	 	<legend>Calcul of Reward</legend>
	 	<table>
			<tr>
			<td><label>Number of Items:</label></td>
			<td><input type="number" name="number" id="nom1" min="1" max="10" value="1" ></td>
			</tr>
			
			<tr>
			<td><label>Number of workers per Item:</label></td>
			<td><input type="number" name="number1" id="nom2" min="1"  max="2" value="1"></td>
			</tr>
			
			<tr>
			<td><label>Number of Worker Submissions:</label></td>
			<td><input type="text" name="number2" id="nom3" placeholder="Number of Worker Submissions"></td>
			</tr>
			
			<tr>
			<td><label>Reward per Submission:</label></td>
			<td><input type="number" name="number3" id="nom4" value="0.01" min="0.01" step="0.01"></td>
			</tr>
			
			<tr>
			<td><label>Total Worker Rewards:</label></td>
			<td><input type="text" name="number4" id="nom5" placeholder="Total worker Rewards"></td>
			</tr>
			
			<tr>
			<td><label>Total Cost:</label></td>
			<td><input type="text" name="number5" id="nom6" placeholder="Total Cost"></td>
			</tr>
			
			<tr>
			<td colspan="2">
			<div class="pay-div">
				<label class="pay-label">You Should Pay :</label>
				<input type="text" name="number6" id="nom7" style="font-weight:bold;">
			</div>
			</td>
			</tr>
			
		</table>
	</fieldset>

	 <fieldset style='border-color:#c0c0c0; border: solid 3px;'>
	 	<legend>Time</legend>
	 	<table>
		 	<tr>
		 	<td><label>Time allotted per assignment:</label></td>
		 	<td>
				<input type="number" name="number7" id="nom8" min="1" value="1" >
			</td><td>
			<span class="custom-dropdown custom-dropdown--white">
				<select name="selection" class="custom-dropdown__select custom-dropdown__select--white">
		            <option selected="selected">Days</option>
		            <option>Hours</option>
		            <option>Minutes</option>
	            </select>
            </span>
			</td>
			</tr>
			
			<tr>
			<td><label>HIT expires in:</label></td>
			<td>
				<input type="number" name="number8" id="nom9" min="1" value="1">
			</td><td>
			<span class="custom-dropdown custom-dropdown--white">
				<select name="selection" class="custom-dropdown__select custom-dropdown__select--white">
		            <option selected="selected">Days</option>
		            <option>Hours</option>
		            <option>Minutes</option>
	            </select>
	        </span>
			</td>
			</tr>
			
			<tr>
			<td><label>Auto-approve and pay Workers in:</label></td>
			<td>
				<input type="number" name="nom9" min="1" value="1" id="nom10">
			</td><td>
			<span class="custom-dropdown custom-dropdown--white">
				<select name="selection" class="custom-dropdown__select custom-dropdown__select--white">
		            <OPTION selected="selected">Days</OPTION>
		            <OPTION>Hours</OPTION>
		            <OPTION>Minutes</OPTION>
		        </select>
		    </span>
			</td>
			</tr>
        </table>
	</fieldset>
</fieldset>
<center>
<table>
<tr>
<td colspan="2"><input style='width: 150px;' type="submit" value="Next" class="button special"/></td>
</tr>
</table>
</center>
</form>

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
$('#nom1').click(function() {  
	sum();
});
$('#nom2').click(function() {  
	sum();
});
$('#nom3').click(function() {  
	sum();
});
$('#nom4').click(function() {  
	sum();
});
$('#nom5').click(function() {  
    sum();
});
$('#nom6').click(function() {  
    sum();
});
$('#nom7').click(function() {  
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
 num3 = result;
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


<%@ include file="/include/footer.jsp" %>
</div>
</div>
</body>
</html>