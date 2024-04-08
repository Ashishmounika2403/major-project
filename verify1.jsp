<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Database.SqlConnection"%>
<%@page import="java.sql.Connection"%>
<%


    String skey = request.getParameter("skey");
    System.out.println("Password : " + skey);


    Connection con = SqlConnection.getConnection();
    Statement st = con.createStatement();

    try {
        ResultSet rs = st.executeQuery("select * from upload where fkey='" + skey + "'");
        if (rs.next()) {
            session.setAttribute("sssid", rs.getString("id"));

            response.sendRedirect("verified.jsp?msg=Key_Verified");
        } else {
            response.sendRedirect("verification.jsp?msg=Failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>
