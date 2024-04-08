<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String college = request.getParameter("college");
    String depart = request.getParameter("depart");
    String date = request.getParameter("date");
    String state = request.getParameter("state");
    String country = request.getParameter("country");

    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        int in = st.executeUpdate("insert into stud_reg (name, pass, email, college, depart, date, state, country, status) values('" + name + "', '" + password + "', '" + email + "', '" + college + "', '" + depart + "', '" + date + "', '" + state + "', '" + country + "', 'No')");
        if (in != 0) {
            response.sendRedirect("stud_reg.jsp?msg=success");
        } else {
            response.sendRedirect("stud_reg.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }



%>