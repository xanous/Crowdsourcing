<%@page import="com.domain.Worker"%>
<header id="header">
	<nav id="nav">
		<ul>
			<li><a
				href="<%=request.getContextPath()%>/Pages/HomeRequester.jsp">Home</a></li>
			<li><a
				href="<%=request.getContextPath()%>/Pages/RequesterMenu.jsp">Create
					Project</a></li>
			<li><a
				href="<%=request.getContextPath()%>/Pages/RequesterProjects.jsp">Request</a></li>
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
	if (c == Worker.class) {
		response.sendRedirect(request.getContextPath() + "/Pages/HomeWorker.jsp");
	}
%>