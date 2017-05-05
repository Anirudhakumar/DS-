

<%
    String uid=request.getParameter("uid");
                 
%>

<p align="right">User ID:<font color="green"><%=uid%></font></p>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie ie6 no-js" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 no-js" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 no-js" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 no-js" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="en"><!--<![endif]-->
	<head>
		<meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="CSS buttons with pseudo-elements" />
        <meta name="keywords" content="css, css3, pseudo, buttons, anchor, before, after, web design" />
        <meta name="author" content="Sergio Camalich for Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style4.css" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div class="container">
			<!-- Codrops top bar -->
            <div class="codrops-top">
                
                    <strong></strong>
                </a>
                <span class="right">
                    
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
			<header>
                <h1>WELCOME <span>USER</span></h1
            </header>
			<section>
                <div id="container_buttons">
                    <p>
                        <a class="a_demo_four" href="Update.jsp?uid=<%=uid%>">
                            Ceate Profile!
                        </a>
                    </p>
                    <p>
                        <a href="match.jsp?uid=<%=uid%>" class="a_demo_four">
                            Find Match
                        </a>
                    </p>
                    <p>
                        <a href="UserView.jsp?uid=<%=uid%>" class="a_demo_four">
                            View Profile;)
                        </a>
                    </p>
					<p>
                        <a href="Login.jsp" class="a_demo_four">
                            Logout
                        </a>
                    </p>
                </div>
			</section>
        </div>
    </body>
</html>
