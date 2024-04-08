<%@page import="Database.SqlConnection" %>
<%@page import="java.sql.*" %>
<%




    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
        String id = request.getParameter("id");

        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/combining_data", "root", "");

        stmt = conn.createStatement();

        rs = stmt.executeQuery("select * from upload where id = '" + id + "'");

        if (rs.next()) {

            String fid = rs.getString("id");
            String fname = rs.getString("filename");
            String skey = rs.getString("fkey");
            String owner = rs.getString("oid");

            String Cname = (String) session.getAttribute("ssname");
            String Cmail = (String) session.getAttribute("ssemail");
            String State = (String) session.getAttribute("ssstate");
            String Country = (String) session.getAttribute("sscountry");

            System.out.println("Client Request : " + fid + fname + skey + owner + Cname + Cmail + State + Country);


            String Status = "No";
//            System.out.println("Request is activated" + Cname + State + State + Country + Status);


            Connection con = SqlConnection.getConnection();
            Statement st = con.createStatement();


            String sql = "insert into request(fid, fname, skey, owner, username, umail, state, country, status) values ('" + fid + "','" + fname + "','" + skey + "','" + owner + "','" + Cname + "','" + Cmail + "','" + State + "','" + Country + "', 'No')";

            int x = st.executeUpdate(sql);
            if (x != 0) {
                response.sendRedirect("view_files.jsp?msg=Request_send_Successfully");

            } else {
                response.sendRedirect("send_request.jsp?message=fail");

            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>