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
                                <center><a href="#"><h1>CP-ABSE: A Ciphertext-Policy Attribute-Based Searchable Encryption Scheme</h1></a></center>
                            </div>
                        </div>
                        <br><br><br><br>
                        <div class="navbar-collapse collapse">							
                            <div class="menu">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation"><a href="index.jsp">Home</a></li>
                                    <li role="presentation"><a href="owner.jsp">Owner</a></li>
                                    <li role="presentation"><a href="user.jsp">User</a></li>																
                                    <li role="presentation"><a href="cloud_provider.jsp">Cloud Provider</a></li>						
                                    <li role="presentation"><a href="register.jsp" class="active">Registration</a></li>						

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
                            <h2 style="font-size: 50px">Owner Registration</h2>					
                        </div>
                        <style>
                            input[type=text], select,input[type=email],input[type=date],input[type=password] {
                                width: 40%;
                                padding: 12px 20px;
                                margin: 8px 0;
                                color: black;
                                display: inline-block;
                                border: 1px solid #ccc;
                                border-radius: 4px;
                                box-sizing: border-box;
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
                        <form action="reg_code.jsp" method="get">

                            <input type="text" id="fname" name="name" placeholder="Your Name">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <input type="password" id="fname" name="password" placeholder="Password">


                            <input type="email" id="fname" name="email" placeholder="E-Mail">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                            <input style="height: 45px" type="date" id="fname" name="dob" placeholder="">


                            <select id="country" name="Gender">
                                <option style="color: black"  value="">Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                            </select>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <input type="text" id="fname" name="phone" placeholder="Contact No">


                            <input type="text" id="fname" name="state" placeholder="State">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


                            <input type="text" id="lname" name="country" placeholder="Country">



                            <input type="submit" value="Submit">
                        </form>


                    </div>
                </div>
            </div>



    </body>
</html>