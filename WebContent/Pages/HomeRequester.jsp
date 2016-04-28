<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Requester</title>
<meta charset="UTF-8">
    <%@ include file="/include/css.jsp" %>
    <link rel="icon" href="<%= request.getContextPath()%>/HomeRequester/images/favicon.ico">
     <link rel="shortcut icon" href="<%= request.getContextPath()%>/HomeRequester/images/favicon.ico" />
     <link rel="stylesheet" href="<%= request.getContextPath()%>/HomeRequester/css/slider.css">
     <script src="<%= request.getContextPath()%>/HomeRequester/js/jquery.js"></script>
     <script src="<%= request.getContextPath()%>/HomeRequester/js/jquery.easing.1.3.js"></script>
     <script src="<%= request.getContextPath()%>/HomeRequester/js/jquery-migrate-1.1.1.js"></script>
     <script src="<%= request.getContextPath()%>/HomeRequester/js/superfish.js"></script>
     <script src="<%= request.getContextPath()%>/HomeRequester/js/jquery.equalheights.js"></script>
     <script src="<%= request.getContextPath()%>/HomeRequester/js/tms-0.4.1.js"></script>
     <script src="<%= request.getContextPath()%>/HomeRequester/js/jquery.carouFredSel-6.1.0-packed.js"></script>
     <script src="<%= request.getContextPath()%>/HomeRequester/js/jquery.ui.totop.js"></script>
     <script>
      $(window).load(function(){
		  $('.slider')._TMS({
			show:0,
			pauseOnHover:false,
			prevBu:'.prev',
			nextBu:'.next',
			playBu:false,
			duration:800,
			preset:'fade',
			easing:'easeOutQuad', 
			pagination:true,//'.pagination',true,'<ul></ul>'
			pagNums:false,
			slideshow:8000,
			numStatus:false,
			banners:'fade',
			waitBannerAnimation:false,
			progressBar:false
		  })  
      });
      
	  $(window).load (
		 function(){$('.carousel1').carouFredSel({auto: false,prev: '.prev1',next: '.next1', width: 960, items: {
			 visible : {min: 4, max: 4},
		  }, 
		  responsive: false, 
		  scroll: 1, 
		  mousewheel: false,
		  swipe: {onMouse: false, onTouch: false}});
	  });      

     </script>
     <!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
         </a>
      </div>
    <![endif]-->
     <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <link rel="stylesheet" media="screen" href="css/ie.css">
    <![endif]-->
</head>
<body>
<div id="content">
	<div class="slider-relative" >
        <div class="slider-block" >
            <div class="slider">
                <ul class="items">
                    <li><img src="<%= request.getContextPath()%>/HomeRequester/images/work2.jpg" alt="">
                        <div class="banner">create your HITS quickly and easily</div>
                    </li>
                    <li><img src="<%= request.getContextPath()%>/HomeRequester/images/timee.jpg" alt="">
                        <div class="banner"> Start receiving results in minutes</div>
                    </li>
                    <li><img src="<%= request.getContextPath()%>/HomeRequester/images/smile.jpg" alt="">
                        <div class="banner">choose the best result</div>
                    </li>
                    <li><img src="<%= request.getContextPath()%>/HomeRequester/images/slider-4.jpg" alt="">
                        <div class="banner">Get high-quality, cost-effective results</div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </div>
    <div  style="text-align:center;padding-top:6cm;">
    <p >Ask workers to complete HITs and get results using Mechanical Turk.<br>you will obtain needed services, ideas,
    or content by soliciting contributions<br>from a large group of people -Workers-
    and especially from the online community <br>rather than from traditional employees
   or suppliers.<br> "" utilizes the combined efforts of the workers to help you resolve a problem,<br> create a new
    product..you must compensates the workers <br>efforts by paying the workers that come up<br>
    with the best resolution, idea, etc.<br>Before starting read the instructions below:</p>
    </div>
    <p align="center"><img src="<%= request.getContextPath()%>/HomeRequester/images/flechee.gif"></p>
    <div style='background:#808080;'>
    <p style='padding-left:1.5cm;font-family:"Times New Roman";font-size:110%' > ===>As a requester:</p>
    <ul style='list-style: square;padding-left:1.5cm;'>
    <li tabindex="0" class="icon-dashboard"><span>You provide your categories, instructions.</span></li>
   <li tabindex="0" class="icon-customers"><span>You provide a reward to pay Workers based on similar work on "".</span></li>
    <li tabindex="0" class="icon-customers"><span>Only Workers who have the Masters Qualification can complete your tasks.</span></li>
    <li tabindex="0" class="icon-users"><span>Work is automatically approved quickly so Workers stay motivated.</span></li> <br>
    <a href="<%= request.getContextPath()%>/Pages/RequesterMenu.jsp" class="button special">Get Started</a>
			
  </ul>
  
  <hr size="20" style='background:#e44c65;'>
  
      
    </div>
    
    <div>
    
    </div>
<%@ include file="/include/headerRequester.jsp" %>

 <%@ include file="/include/footer.jsp" %>
</body>
</html>