<%-- 
    Document   : SignIn
    Created on : 18/05/2015, 20:36:57
    Author     : Matheus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Full Slider - Start Bootstrap Template</title>

    <!-- Bootstrap Core CSS -->
    <link href="../Customer/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../Customer/css/full-slider.css" rel="stylesheet">
    <!--<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>-->
    <link rel="stylesheet" href="../Customer/css/style.css">
</head>

<body style="background-color:black">

        <!-- top navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Eu vou!</a>
            </div>


            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="SignIn.jsp">Entrar</a>
                    </li>
                    <li>
                        <a href="#0">Bares Limeira</a>
                    </li>
                    <li>
                        <a href="#0">Trabalhe Conosco</a>
                    </li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    
    <!-- Full Page Image Background Carousel Header -->
    <div class="container" style="margin-top: 10%">
        <div class="row">
            <div class="col-md-6" style="border-right: 1px solid #ffffff">
            <div class="col-md-10">
                <div class="panel panel-login">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-xs-6">
                                <a href="#" class="active" id="login-form-link">Login</a>
                            </div>
                            <div class="col-xs-6">
                                <a href="#" id="register-form-link">Register</a>
                            </div>
                        </div>
                        <hr>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form id="login-form"  method="post" role="form" style="display: block;" action="LoginCustomerServlet">
                                    <p style="color: red; margin-left: 50px;"><c:out value="${requestScope.errorMessage}"></c:out></p>
                                    <div class="form-group">
                                        <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-group text-center">
                                        <input type="checkbox" tabindex="3" class="" name="remember" id="remember">
                                        <label for="remember"> Remember Me</label>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <form id="register-form"  method="post" role="form" style="display: none;" action="InsertCustomerServlet">
                                    <div class="form-group">
                                        <input type="text" name="nome" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="senha" id="password" tabindex="2" class="form-control" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="telefone" id="telephone" tabindex="2" class="form-control" placeholder="Telephone">
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-6 col-sm-offset-3">
                                                <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
                                            </div>
                                        </div>
                                    </div>
                                </form>                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6 offset1">
            <h2 style="color:white; text-align:center">Sign in with</h2> 
            <div class="social-buttons"style="margin-top:20%"><a href="#" class="social-button facebook"><i class="fa fa-facebook"></i></a><a href="#" class="social-button twitter"><i class="fa fa-twitter"></i></a><a href="#" class="social-button google"><i class="fa fa-google"></i></a>
</div>
            </div>
    </div>
</div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="../Customer/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../Customer/js/bootstrap.min.js"></script>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script>

    $(function() {

    $('#login-form-link').click(function(e) {
        $("#login-form").delay(100).fadeIn(100);
        $("#register-form").fadeOut(100);
        $('#register-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });
    $('#register-form-link').click(function(e) {
        $("#register-form").delay(100).fadeIn(100);
        $("#login-form").fadeOut(100);
        $('#login-form-link').removeClass('active');
        $(this).addClass('active');
        e.preventDefault();
    });

});
    </script>
    
</body>

</html>

