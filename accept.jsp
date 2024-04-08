<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%

    String id = request.getParameter("id");


    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        int in = st.executeUpdate("update stud_reg set status='Accepted' where id='" + id + "'");
        if (in != 0) {
            response.sendRedirect("user_details.jsp?msg=success");
        } else {
            response.sendRedirect("user_details.jsp?msgg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }



%>