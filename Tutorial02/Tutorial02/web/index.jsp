<%-- 
    Document   : login_page
    Created on : Jan 18, 2024, 10:21:28 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sign In</title>
        <!-- Bootstrap -->
	<link href="css/bootstrap-4.4.1.css" rel="stylesheet">
	<link href="index.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        
        <%  if((String)request.getAttribute("username") != null)
            {
                String username = (String)request.getAttribute("username");
        %>
            <center><h1 style="color: green; padding-top: 20px">Welcome <%=username %></h1></center>
        <%  } 
            else if((String)request.getAttribute("error") != null)
            {  
                String error = (String)request.getAttribute("error");
        %>
            <center><h1 style="color: green; padding-top: 20px"><%=error %></h1></center>
        <%  }
            else
            {
        %>
            <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1>SIGN IN</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12" align="center">
                        <form name="login_form" method="post" action="LoginServlet">
                            <div class="form-group">
                                <label for="username">Username&nbsp;</label>
                                <input type="text" class="form-control" name="username" placeholder="Enter username">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Enter password">
                            </div>
                            <center>
				<button type="submit" class="btn btn-primary">Sign In</button>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
  	<!-- body code goes here -->
        <%
            }
        %>
        


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/jquery-3.4.1.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/popper.min.js"></script> 
	<script src="js/bootstrap-4.4.1.js"></script>
    </body>
</html>
