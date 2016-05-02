<%@page import="com.domain.Requester"%>
<header id="header">
	<nav id="nav">
		<ul>
			<li><a href="<%=request.getContextPath()%>/Pages/HomeWorker.jsp">Home</a></li>
			<li><a href="elements.html">Worker</a></li>
			<li><a href="<%=request.getContextPath()%>/WorkerPages/Work.jsp">Work</a></li>
			<li><a href="<%=request.getContextPath()%>/Pages/Settings.jsp">Setting</a></li>
			<li><a href="<%=request.getContextPath()%>/Logout"
				class="button special">Log Out</a></li>

		</ul>
	</nav>
</header>
<%
	if (session == null || session.getAttribute("login") == null) {
		response.sendRedirect(request.getContextPath());
	}
	Class c = (Class) session.getAttribute("class");
	if (c == Requester.class) {
		response.sendRedirect(request.getContextPath() + "/Pages/HomeRequester.jsp");
	}
%>