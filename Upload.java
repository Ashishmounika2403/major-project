/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Action;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Database.SqlConnection;
import Action.Ftpcon;
import Algorithms.Encryption;
import com.sun.xml.internal.ws.api.pipe.Tube;
import java.sql.PreparedStatement;
import java.util.Random;

/**
 *
 * @author Java
 */
public class Upload extends HttpServlet {

    File file;
    final String filepath = "D:/";

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            HttpSession session = request.getSession(true);
            MultipartRequest m = new MultipartRequest(request, filepath);
            String attr1 = m.getParameter("depart");
            String attr2 = m.getParameter("college");
            String ren = m.getParameter("ren");
            String oid = m.getParameter("ownerid");

            File file = m.getFile("file");
            String filename = file.getName().toLowerCase();

            Connection con = SqlConnection.getConnection();


            BufferedReader br = new BufferedReader(new FileReader(filepath + filename));
            StringBuffer sb = new StringBuffer();
            String temp = null;
            System.out.println();
            while ((temp = br.readLine()) != null) {
                sb.append(temp);
            }


            KeyGenerator keyGen = KeyGenerator.getInstance("AES");
            keyGen.init(128);
            SecretKey secretKey = keyGen.generateKey();
            System.out.println("secret key:" + secretKey);

            Encryption e = new Encryption();
            String abe = e.encrypt(sb.toString(), secretKey);
            //storing encrypted file
            FileWriter fw = new FileWriter(file);
            fw.write(abe);
            fw.close();

            byte[] b = secretKey.getEncoded();//encoding secretkey
            String skey = Base64.encode(b);
            System.out.println("Converted secretkey to string:" + skey);



            PreparedStatement pstm1 = null;
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            //get current date time with Date()
            Date date = new Date();
            System.out.println(dateFormat.format(date));
            String time = dateFormat.format(date);


            Calendar cal = Calendar.getInstance();
            System.out.println(dateFormat.format(cal.getTime()));

            //uploading file
            boolean status = new Ftpcon().upload(file);
            System.out.println("file upload to cloud==>>><<<" + status);
            if (status) {
                //Connection con= Dbconnection.getConn();
                Statement st = con.createStatement();

                String sq2 = "insert into upload(oid, attr1, attr2, ren, filedata, filename, utime, fkey, status) values (? , ?, ?, ?, ?, ?, ?, ?, ?) ";


                pstm1 = con.prepareStatement(sq2);
                pstm1.setString(1, oid);
                pstm1.setString(2, attr1);
                pstm1.setString(3, attr2);
                pstm1.setString(4, ren);
                pstm1.setString(5, abe);
                pstm1.setString(6, file.getName());
                pstm1.setString(7, time);
                pstm1.setString(8, skey);
                pstm1.setString(9, "No");


                boolean sd = pstm1.execute();

                if (sd = true) {

                    response.sendRedirect("file_upload.jsp?msg=File_upload_to_cloud_Successfully");

                } else {
                    response.sendRedirect("file_upload.jsp?msg=Failed");
                }

            }
            System.out.println("File Not Upload to Cloud");
            response.sendRedirect("file_upload.jsp?msg=Failed");

        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
