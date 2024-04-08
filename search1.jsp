<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>

<%

    String a1 = request.getParameter("a1");
    String a2 = request.getParameter("a2");
    System.out.println("Access Policy1 : "+a1);
    System.out.println("Access Policy2 : "+a2);
    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("select * from upload where attr2='" + a1 + "' AND attr1='" + a2 + "'");
        if (rs.next()) {

            session.setAttribute("ssiid", rs.getString("id"));

            response.sendRedirect("view_files.jsp?msg=success");
        } else {
            response.sendRedirect("search.jsp?msgg=Your_Access_Policy_not_Satisfied");
        }
    } catch (Exception ex) {
        ex.printStackTrace();

    }



%>