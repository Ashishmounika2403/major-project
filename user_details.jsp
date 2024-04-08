<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.ResultSetInternalMethods"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.Connection"%>
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
                                <center><a href="#"><h1>CP-ABSE: A Ciphertext-Policy Attribute-Based Searchable Encryption Scheme</h1></a></center>
                            </div><br><br><br><br>
                        </div>

                        <div class="navbar-collapse collapse">							
                            <div class="menu">
                                <ul class="nav nav-tabs" role="tablist">
                                    <li role="presentation"><a href="owner_home.jsp">Owner Home</a></li>
                                    <li role="presentation"><a href="file_upload.jsp">File Upload</a></li>
                                    <li role="presentation"><a href="file_de.jsp">File Details</a></li>																
                                    <li role="presentation"><a href="user_details.jsp" class="active">User Details</a></li>								
                                    <li role="presentation"><a href="index.jsp">Logout</a></li>						

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

                        <style>
                            table {
                                font-family: arial, sans-serif;
                                border-collapse: collapse;
                                width: 85%;
                            }

                            td, th {
                                border: 1px solid #dddddd;
                                text-align: left;
                                padding: 8px;
                            }

                            tr:nth-child(even) {
                                background-color: #dddddd;
                            }
                        </style>

                        <br><br><br><br><br><br><br><br><br>
                        <div class="wow bounceInDown" data-wow-offset="0" data-wow-delay="0.3s">
                            <h2 style="font-size: 35px">Student Details</h2>					
                        </div>
                        <br><br>
                        <center><table>

                                <tr>
                                    <th style="color: #0f0f0f">UID</th>
                                    <th style="color: #080808">User Name</th>
                                    <th style="color: #080808">Email</th>
                                    <th style="color: #080808">State</th>
                                    <th style="color: #080808">Country</th>
                                    <th style="color: #080808">Authorized</th>
                                    <th style="color: #080808">Accept</th>

                                </tr>

                                <%

                                    Connection con = SqlConnection.getConnection();
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery("select * from stud_reg");
                                    while (rs.next()) {
                                %>
                                <tr>
                                    <td style="color: #080808"><%=rs.getString("id")%></td>
                                    <td style="color: #080808"><%=rs.getString("name")%></td>
                                    <td style="color: #080808"><%=rs.getString("email")%></td>
                                    <td style="color: #080808"><%=rs.getString("state")%></td>
                                    <td style="color: #080808"><%=rs.getString("country")%></td>
                                    <td style="color: #080808"><%=rs.getString("status")%></td>
                                    <td style="color: #080808"><a style="color: red" href="accept.jsp?id=<%=rs.getString("id")%>">click</a></td>


                                </tr>

                                <%
                                    }

                                %>
                            </table>
                        </center>


                    </div>
                </div>
            </div>
    </body>
</html>
