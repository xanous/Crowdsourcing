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
					
<%@ include file="/include/NavDesign.jsp" %>

<br>

<form class="input-append" action="<%= request.getContextPath()%>/Pages/Upload/NewFile.jsp" method="post"

enctype="multipart/form-data">
   					
 <fieldset>
 <legend>Instructions</legend>
   <table>
		 <tr>
		 <td><label for="text" style='padding-left:10px;'>Instructions:</label></td>
		 <td><textarea name="instructions" style='width:800px; height: 200px' ></textarea>
		 </td>
		 </tr>
		 <tr>
		 <td colspan="2"><label class="custom-file-upload"><input type="file" name="pic" accept="image/*"/>Upload an image</label></td>
		 </tr>
		 </table>
		 
 </fieldset>
 
 <br>
 
 <fieldset>
 <legend>Response</legend>
 <table>
		<tr>
		 <td><textarea placeholder="Write your Response" readonly></textarea>
		 </td>
		 </tr>
		 </table>
</fieldset>

<center>
<table>
<tr>
<td colspan="2"><input style='width: 150px;' type="submit" value="Next" class="button special"/></td>
</tr>
</table>
</center>
</form>

</div>
</div>
<%@ include file="/include/footer.jsp" %>

</body>
</html>