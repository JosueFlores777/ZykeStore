/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sinfloo.controlador;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author josue
 */
@WebServlet(name = "Pdf", urlPatterns = {"/Pdf"})
public class Pdf extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/pdf");
        OutputStream out = response.getOutputStream();
        
        String buscar=request.getParameter("txtBuscar");
        try {
            try {

                Connection cn;
               String url = "jdbc:sqlserver://DESKTOP-OM8C2CV\\SQLEXPRESS:1433;databaseName=Proyec";
                String user = "BD24K";
                String password = "123";

                ResultSet rs = null;

                CallableStatement st;

                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                cn = DriverManager.getConnection(url, user, password);
                st = cn.prepareCall("{call Sp_ListarProductos("+buscar+")}");
                rs = st.executeQuery();

                if (cn != null) {
                    try {
                        Paragraph par1 = new Paragraph();
                        Paragraph par2 = new Paragraph();
                        Document documento = new Document();
                        PdfWriter.getInstance(documento, out);

                        documento.open();
                        Font fontitulo = new Font(Font.FontFamily.HELVETICA, 18, Font.BOLD, BaseColor.BLUE);
                        par1.add(new Phrase("Reportes de Productos", fontitulo));
                        par1.setAlignment(Element.ALIGN_CENTER);
                        par1.add(new Phrase(Chunk.NEWLINE));
                        par1.add(new Phrase(Chunk.NEWLINE));
                        documento.add(par1);

                        documento.open();
                        Font fontDescri = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL, BaseColor.BLACK);
                        par2.add(new Phrase("Todos los usuarios que estan en el momento y jere se la come"
                                + "Porque es bien joton, asi, asi", fontDescri));
                        par2.setAlignment(Element.ALIGN_JUSTIFIED);
                        par2.add(new Phrase(Chunk.NEWLINE));
                        par2.add(new Phrase(Chunk.NEWLINE));
                        documento.add(par2);
      
                        Image Imagenes = Image.getInstance("C:\\Users\\josue\\Desktop\\ZykeStore\\web\\img\\zykelogo.png");
                        Imagenes.setAlignment(Element.ALIGN_RIGHT);
                        // tamaño  Imagenes.scaleToFit(100,100);
                        documento.add(Imagenes);

                        PdfPTable tabla = new PdfPTable(6);
                        PdfPCell celda1 = new PdfPCell(new Paragraph("Codigo", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.RED)));
                        PdfPCell celda2 = new PdfPCell(new Paragraph("Nombre", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.RED)));
                        PdfPCell celda3 = new PdfPCell(new Paragraph("Descripcion", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.RED)));
                        PdfPCell celda4 = new PdfPCell(new Paragraph("Precio", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.RED)));
                        PdfPCell celda5 = new PdfPCell(new Paragraph("Categoria", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.RED)));
                        PdfPCell celda6 = new PdfPCell(new Paragraph("Estado", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.RED)));
                        PdfPCell celda7 = new PdfPCell(new Paragraph("Estado", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.RED)));

                        tabla.addCell(celda1);
                        tabla.addCell(celda2);
                        tabla.addCell(celda3);
                        tabla.addCell(celda4);
                        tabla.addCell(celda5);
                        tabla.addCell(celda6);
                        tabla.addCell(celda7);
                        while (rs.next()) {
                            tabla.addCell(rs.getString(1));
                            tabla.addCell(rs.getString(2));
                            tabla.addCell(rs.getString(3));
                            tabla.addCell(rs.getString(4));
                            tabla.addCell(rs.getString(5));
                            tabla.addCell(rs.getString(6));
                            tabla.addCell(rs.getString(7));
                        }
                       
                        documento.add(tabla);

                        documento.close();
                    } catch (Exception ex) {
                        ex.getMessage();
                    }
               }
                
            } catch (Exception ex) {
                ex.getMessage();
            }
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
