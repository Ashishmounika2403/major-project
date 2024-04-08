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
        ResultSet rs = st.executeQuery("select * from stud_reg where name='" + name + "' AND pass='" + password + "' AND status='Accepted'");
        if (rs.next()) {

            session.setAttribute("ssatr1", rs.getString("college"));
            session.setAttribute("ssatr2", rs.getString("depart"));
            session.setAttribute("ssname", rs.getString("name"));
            session.setAttribute("ssemail", rs.getString("email"));
            session.setAttribute("ssstate", rs.getString("state"));
            session.setAttribute("sscountry", rs.getString("country"));

            response.sendRedirect("user_home.jsp?msg=success");
        } else {
            response.sendRedirect("user.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }



%>