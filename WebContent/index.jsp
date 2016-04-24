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
<%@ include file="/include/banner.jsp" %>
<section id="one" class="spotlight style1 bottom">
					<span class="image fit main"><img src="<%= request.getContextPath()%>/template/css/images/pic05.jpg" alt="" /></span>
					<div class="content">
						<div class="container">
							<div class="row">
								<div class="4u 12u$(medium)">
									<header>
										<h2>That's what we called "Crowdsourcing"</h2>
										<div align="center"><img src="<%= request.getContextPath()%>/template/css/images/f.png" alt="" width="50"/></div>
									</header>
								</div>
								<div class="4u 12u$(medium)">
									<p>Crowdsourcing is the practice of engaging a "crowd" or group for a common goal often innovation, problem solving, or efficiency. 
									Crowdsourcing can take place on many different levels and across various industries. 
									Thanks to our growing connectivity, it is now easier than ever for individuals to collectively contribute whether with ideas, time, expertise, or funds to a project or cause. 
									This collective mobilization is crowdsourcing.</p>
								</div>
								<div class="4u$ 12u$(medium)">
									<p>This phenomenon can provide organizations with access to new ideas and solutions, deeper consumer engagement, opportunities for co-creation, optimization of tasks, and reduced costs. The Internet and social media have brought organizations closer to their stakeholders, laying the groundwork for new ways of collaborating and creating value together like never before.</p>
								</div>
							</div>
						</div>
					</div>
					<a href="#two" class="goto-next scrolly">Next</a>
				</section>

			<!-- Two -->
				<section id="two" class="spotlight style2 right">
					<span class="image fit main"><img src="<%= request.getContextPath()%>/template/css/images/ima2.jpg" alt="" /></span>
					<div class="content">
						<header>
							<h2>Welcome Worker</h2>
							<p>You can work from home <br/>
                               You can choose your own work hours <br/>
                               You can get paid for doing good work <br/>
                                How? </p>
						</header>
						 <ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</div>
					<a href="#three" class="goto-next scrolly">Next</a>
				</section>

			<!-- Three -->
				<section id="three" class="spotlight style3 left">
					<span class="image fit main bottom"><img src="<%= request.getContextPath()%>/template/css/images/req.jpg" alt="" /></span>
					<div class="content">
						<header>
							<h2>Welcome Requester</h2>
							<p>You can access to all the responses </br>
                               You can get thousands of HITs completed in minutes  </br>
                                You can pay only when you're satisfied with the results</br>
                                How? </p>
						</header>
						
						<ul class="actions">
							<li><a href="#" class="button">Learn More</a></li>
						</ul>
					</div>
					<a href="#four" class="goto-next scrolly">Next</a>
				</section>

			<!-- Four -->
				<section id="four" class="wrapper style1 special fade-up">
					<div class="container">
						<header class="major">
							<h2>"                     "</h2>
							<p>is the platform that allows you to achieve many things in one shot</p>
						</header>
						<div class="box alt">
							<div class="row uniform">
								<section class="4u 6u(medium) 12u$(xsmall)">
									<span class="icon alt major fa-area-chart"></span>
									<h3>investment</h3>
								</section>
								<section class="4u 6u$(medium) 12u$(xsmall)">
									<span class="icon alt major fa-comment"></span>
									<h3>Give your idea</h3>
								</section>
								<section class="4u$ 6u(medium) 12u$(xsmall)">
									<span class="icon alt major fa-flask"></span>
									<h3>Save your time</h3>
								</section>
								<section class="4u 6u$(medium) 12u$(xsmall)">
									<span class="icon alt major fa-paper-plane"></span>
									<h3>Send your Response</h3>
								</section>
								<section class="4u 6u(medium) 12u$(xsmall)">
									<span class="icon alt major fa-file"></span>
									<h3>Get money</h3>
								</section>
								<section class="4u$ 6u$(medium) 12u$(xsmall)">
									<span class="icon alt major fa-lock"></span>
									<h3>Your account is secure</h3>
								</section>
							</div>
						</div>
						
					</div>
				</section>

			<!-- Five -->
				<section id="five" class="wrapper style2 special fade">
					<div class="container">
						<header>
							<h2 style="color:black;">How did you find "  "?</h2>
							<p style="color:black;">Your opinion interests us</p>
						</header>
						<form method="post" action="#" class="container 50%">
							<div class="row uniform 50%">
								<div class="8u 12u$(xsmall)" align="center"><textarea name="opinion" style="background-color:#c0c0c0; color:black;"></textarea></div>
								<div class="4u$ 12u$(xsmall)"><input type="submit" value="Send" class="fit special" /></div>
							</div>
							<p style="color:black; font-weight:medium;"> Over a range of 0 to 100, did you enjoy our platform ?<br/>
                   <input type="range"  min="0" max="100" step="10" value="0"/> </p>
						</form>
					</div>
				</section>
<%@ include file="/include/footer.jsp" %>
</div>
<%@ include file="/include/js.jsp" %>
</body>
</html>