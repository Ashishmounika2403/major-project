<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String Gender = request.getParameter("Gender");
    String Role = request.getParameter("phone");
    String state = request.getParameter("state");
    String country = request.getParameter("country");

    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        int in = st.executeUpdate("insert into reg (name, pass, email, dob, gender, role, state, country, status) values('" + name + "', '" + password + "', '" + email + "', '" + dob + "', '" + Gender + "', '" + Role + "', '" + state + "', '" + country + "', 'No')");
        if (in != 0) {
            response.sendRedirect("register.jsp?msg=success");
        } else {
            response.sendRedirect("register.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }



%>