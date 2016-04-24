<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SignUp</title>
<meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="<%= request.getContextPath()%>/SignUp/css/style.css">
    <%@ include file="/include/css.jsp" %>
</head>
<body>


  <div class="site__container">

    <div class="grid__container">

      <form action="" method="post" class="form form--login">

        <div class="form__field">
          <label class="fontawesome-user" for="login__username"><span class="hidden">Username</span></label>
          <input id="login__username" type="text" class="form__input" placeholder="Username" required>
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">Password</span></label>
          <input id="login__password" type="password" class="form__input" placeholder="Password" required>
        </div>
        
        <div class="form__field">
          <SELECT name="nom" size="1" style="color:#fff;background-color: #3b4148;">
            <OPTION color="#ea4c88">Worker</OPTION>
            <OPTION>Requester</OPTION>
            </SELECT>
        </div>

        <div class="form__field">
          <input type="submit" value="Sign In">
        </div>

      </form>

      <p class="text--center">Not a member? <a href="<%= request.getContextPath()%>/Pages/SignIn.jsp">Sign up now</a> <span class="fontawesome-arrow-right"></span></p>

    </div>
 </div>
 <%@ include file="/include/footer.jsp" %>
</body>
</html>