<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Random"%>
<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
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
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/animate.css">
        <link href="css/style.css" rel="stylesheet" />	
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <header>
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
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

                        <div class="navbar-collapse collapse">							
                            <div class="menu">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation"><a href="owner_home.jsp">Owner Home</a></li>
                                    <li role="presentation"><a href="file_upload.jsp" class="active">File Upload</a></li>
                                    <li role="presentation"><a href="file_de.jsp">File Details</a></li>																
                                    <li role="presentation"><a href="user_details.jsp">User Details</a></li>						
                                    <li role="presentation"><a href="index.jsp">Logout</a></li>						

                                </ul>
                            </div>
                        </div>						
                    </div>
                </div>	
            </nav>			
        </header>

        <%
            String oid = (String) session.getAttribute("semail");
            System.out.println("------------ : " + oid);
            Random RANDOM = new SecureRandom();
            int KL = 16;
            String letters = "0123456789";
            String random = "";
            for (int i = 0; i < KL; i++) {
                int index = (int) (RANDOM.nextDouble() * letters.length());
                random += letters.substring(index, index + 1);
            }
            String random_chal = random;
        %>
        <div class="services">
            <div class="container">
                <div class="text-center">
                    <div class="services-box">



                        <br><br><br><br><br><br><br><br><br>
                        <div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
                            <h2 style="font-size: 35px"></h2>					
                        </div>
                        <br><br>
                        <style>
                            .container {
                                padding: 16px;
                                background-color: white;
                            }

                            /* Full-width input fields */
                            input[type=text], input[type=password],input[type=file],select {
                                width: 100%;
                                padding: 15px;
                                margin: 5px 0 22px 0;
                                display: inline-block;
                                border: none;
                                background: #f1f1f1;
                            }

                            input[type=text]:focus, input[type=password]:focus, input[type=file]:focus,select:focus {
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
                                <center><br><img style="width: 400px; height: 300px" src="img/file upload.png"> </center>
                            </div>

                            <div style="width: 50%; float: left">
                                <left><h3 style="font-family: cursive">FILE UPLOAD HERE!!</h3></left>
                                <!--<p>Please fill in this form to create an account.</p>-->
                                <hr>
                                <form action="Upload" method="Post" enctype="multipart/form-data">
                                    <table style="width:90%">
                                        <tr>
                                            <td><label for="name" style="color: black"><b>Attribute Set</b></label></td>
                                            <td>

                                                <select style="width:250px; height:50px; color: black" name="college" required="">
                                                    <option style="color: black"  value="">Select College</option>
                                                    <option value="PEC">PEC</option>
                                                    <option value="PGCW">PGCW</option>
                                                    <option value="MVEC">MVEC</option>
                                                </select>
                                            </td> 
                                            <td><input style="width:250px; height:50px; color: black" type="hidden" id="fname" name="ownerid" value="<%=oid%>"  readonly=""></td> 
                                        </tr>

                                        <tr>
                                            <td><label for="psw-repeat" style="color: black"><b>Attribute Set</b></label></td>
                                            <td>
                                                <select style="width:250px; height:50px; color: black" id="country" name="depart">
                                                    <option style="color: black"  value="">Department</option>
                                                    <option value="IT">IT</option>
                                                    <option value="BSC">B.SC</option>
                                                    <option value="BCA">BCA</option>
                                                    <option value="MCA">MCA</option>
                                                    <option value="MSC">M.SC</option>
                                                </select>
                                                <br></td> 
                                        </tr>
                                        <tr>
                                            <td><label for="psw-repeat" style="color: black"><b>Random Challenge</b></label></td>
                                            <td><input style="width:250px; height:50px; color: black" type="text" id="fname" name="ren" value="<%=random_chal%>" readonly=""><br></td> 
                                        </tr>
                                        <tr>
                                            <td><label for="psw-repeat" style="color: black"><b>Select File</b></label></td>
                                            <td><input style="width:250px; height:50px; color: black" type="file" id="fname" name="file" required=""><br></td> 
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td><input style="width:250px; height:50px;" type="submit" value="Upload"></td> 
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
