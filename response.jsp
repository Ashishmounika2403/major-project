<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%@page import="Action.MailSender"%>
<%

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    MailSender ms = new MailSender();

    try {
        String id = request.getParameter("id");

        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/combining_data", "root", "");

        stmt = conn.createStatement();

        rs = stmt.executeQuery("select * from request where id = '" + id + "'");

        if (rs.next()) {

            String fname = rs.getString("fname");
            String skey = rs.getString("skey");
            String sname = rs.getString("username");
            String smail = rs.getString("umail");

            String Status = "No";

            String message = "\nFile Access Secret Key..." + "\n\n\tFile Name : " + fname + "\n\tSecret Key : " + skey;

            ms.secretMail(message, sname, smail);


            Connection con = SqlConnection.getConnection();
            Statement st = con.createStatement();


            String sql = ("update request SET status='permission granted' where id='" + id + "'");


            int x = st.executeUpdate(sql);
            if (x != 0) {
                response.sendRedirect("view_user_request.jsp?msg=permission_granted");

            } else {
                response.sendRedirect("view_user_request.jsp?message=fail");

            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>