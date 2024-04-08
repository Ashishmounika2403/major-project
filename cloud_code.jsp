<%
    String Name = request.getParameter("name");
    String pass = request.getParameter("password");

    System.out.println(Name);
    System.out.println(pass);

    if (Name.equalsIgnoreCase("cloud") & pass.equalsIgnoreCase("cloud")) {

        response.sendRedirect("cloud_home.jsp?msg=Success");
    } else {
        response.sendRedirect("cloud_provider.jsp?msgg=Failed");
    }

%>