<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>

<%

    String name = request.getParameter("name");
    String password = request.getParameter("password");
    System.out.println(name);
    System.out.println(password);
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from reg where name='" + name + "' AND pass='" + password + "' ");
        if (rs.next()) {

           session.setAttribute("sname", rs.getString("name"));
           session.setAttribute("semail", rs.getString("email"));
           session.setAttribute("sstate", rs.getString("state"));
           session.setAttribute("scountry", rs.getString("country"));

            response.sendRedirect("owner_home.jsp?msg=success");
        } else {
            response.sendRedirect("owner.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }



%>