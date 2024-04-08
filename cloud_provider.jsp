<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>CP-ABSE: A Ciphertext-Policy Attribute-Based Searchable Encryption Scheme</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/jquery.bxslider.css">
        <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />	
        <link rel="stylesheet" href="css/animate.css">
        <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">	
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <header>		
            <nav class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="navigation">
                    <div class="container">					
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="navbar-brand">
                                <center><a href="index.jsp"><h1>CP-ABSE: A Ciphertext-Policy Attribute-Based Searchable Encryption Scheme</h1></a></center>
                            </div><br><br><br><br>
                        </div>
                        <br><br><br><br>
                        <div class="navbar-collapse collapse">							
                            <div class="menu">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation"><a href="index.jsp">Home</a></li>
                                    <li role="presentation"><a href="owner.jsp">Owner</a></li>
                                    <li role="presentation"><a href="user.jsp">User</a></li>																
                                    <li role="presentation"><a href="cloud_provider.jsp" class="active">Cloud Provider</a></li>						
                                    <li role="presentation"><a href="stud_reg.jsp">Student Register</a></li>						

                                </ul>
                            </div>
                        </div>						
                    </div>
                </div>	
            </nav>		
        </header>

        <div class="services">
            <div class="container">
                <div class="text-center">
                    <div class="services-box">
                        <div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
                            <h2 style="font-size: 35px"></h2><br>					
                        </div>
                        <style>
                            .container {
                                padding: 16px;
                                background-color: white;
                            }

                            /* Full-width input fields */
                            input[type=text], input[type=password] {
                                width: 100%;
                                padding: 15px;
                                margin: 5px 0 22px 0;
                                display: inline-block;
                                border: none;
                                background: #f1f1f1;
                            }

                            input[type=text]:focus, input[type=password]:focus {
                                background-color: #ddd;
                                outline: none;
                            }

                            /* Overwrite default styles of hr */
                            hr {
                                border: 1px solid #f1f1f1;
                                margin-bottom: 25px;
                            }

                            /* Set a style for the submit button */
                            .registerbtn {
                                background-color: #4CAF50;
                                color: white;
                                padding: 16px 20px;
                                margin: 8px 0;
                                border: none;
                                cursor: pointer;
                                width: 100%;
                                opacity: 0.9;
                            }

                            .registerbtn:hover {
                                opacity: 1;
                            }

                            /* Add a blue text color to links */
                            a {
                                color: dodgerblue;
                            }

                            /* Set a grey background color and center the text of the "sign in" section */
                            .signin {
                                background-color: #f1f1f1;
                                text-align: center;
                            }
                            input[type=submit] {
                                width: 30%;
                                background-color: #00abf0;
                                color: black;
                                padding: 14px 20px;
                                margin: 8px 0;
                                border: none;
                                border-radius: 4px;
                                cursor: pointer;
                            }



                            input[type=submit]:hover {
                                background-color: red;
                            }

                        </style>

                        <div>
                            <div style="width: 50%; float: right">
                                <center><br><img style="width: 400px; height: 300px" src="img/cloud login page.jpg"> </center>
                            </div>

                            <div style="width: 50%; float: left">
                                <left><h3 style="font-family: cursive">CLOUD PROVIDER LOGIN PAGE</h3></left>
                                <!--<p>Please fill in this form to create an account.</p>-->
                                <hr>
                                <form action="cloud_code.jsp" method="get">
                                    <table style="width:90%">
                                        <tr>
                                            <td><label for="name" style="color: black"><b>User Name</b></label></td>
                                            <td><input style="width:250px; height:50px; color: black" type="text" placeholder="Enter Name" name="name" required></td> 
                                        </tr>
                                        <tr>
                                            <td><label for="psw-repeat" style="color: black"><b>Password</b></label></td>
                                            <td><input style="width:250px; height:50px; color: black" type="password" placeholder="Password" name="password" required><br></td> 
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><input style="width:250px; height:50px;" type="submit" value="Login"></td> 
                                        </tr>

                                    </table>
                                </form>

                                <br>




                            </div>
                        </div>


                    </div>
                </div>
            </div>



    </body>
</html>