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
                /* st = cn.prepareCall("{call Sp_reporte_cliente()}");
                 rs = st.executeQuery();
                 */
                String reportTipo = request.getParameter("select");
                if (cn != null) {
                    try {
                        Paragraph par1 = new Paragraph();
                        Paragraph par2 = new Paragraph();
                        Document documento = new Document();
                        PdfWriter.getInstance(documento, out);

                        documento.open();

                     
                        /*
                         Image Imagenes = Image.getInstance("C:\\Users\\josue\\Desktop\\a2\\Progra4\\web\\img\\category-1.png");
                         Imagenes.setAlignment(Element.ALIGN_RIGHT);
                         //Imagenes.scaleToFit(100,100);
                         documento.add(Imagenes);
                         */
                        
                  switch(reportTipo){
                  
                      case "1":
                          st = cn.prepareCall("{call Sp_reporte_cliente()}");
                          rs = st.executeQuery();
                             Font fontitulo = new Font(Font.FontFamily.UNDEFINED, 18, Font.BOLD, BaseColor.ORANGE);
                        par1.add(new Phrase("Reportes de Clientes", fontitulo));
                        par1.setAlignment(Element.ALIGN_CENTER);
                        par1.add(new Phrase(Chunk.NEWLINE));
                        par1.add(new Phrase(Chunk.NEWLINE));
                        documento.add(par1);

                        documento.open();
                        Font fontDescri = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL, BaseColor.BLACK);
                        par2.add(new Phrase("El total de usaurios dentro de la tienda", fontDescri));
                        par2.setAlignment(Element.ALIGN_JUSTIFIED);
                        par2.add(new Phrase(Chunk.NEWLINE));
                        par2.add(new Phrase(Chunk.NEWLINE));
                        documento.add(par2);
                        Paragraph para = new Paragraph();
                        para.add(new Chunk("\n "));
                        para.add(new Chunk("\n "));
                        para.add(new Chunk("\n"));
                        documento.add(para);
                          
                          PdfPTable tabla = new PdfPTable(5);
                          PdfPCell celda1 = new PdfPCell(new Paragraph("Nombre", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                          PdfPCell celda2 = new PdfPCell(new Paragraph("DUI", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                          PdfPCell celda3 = new PdfPCell(new Paragraph("Direccion", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                          PdfPCell celda4 = new PdfPCell(new Paragraph("Email", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                          PdfPCell celda5 = new PdfPCell(new Paragraph("Rol", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));

                          tabla.addCell(celda1);
                          tabla.addCell(celda2);
                          tabla.addCell(celda3);
                          tabla.addCell(celda4);
                          tabla.addCell(celda5);
                          String tipo1 = "";
                        while (rs.next()) {
                            tabla.addCell(rs.getString(1));
                            tabla.addCell(rs.getString(2));
                            tabla.addCell(rs.getString(3));
                            tabla.addCell(rs.getString(4));
                            if(!"1".equals(rs.getString(5))){
                                tipo1="Cliente";
                            } else {
                                tipo1="Administrador";
                            }
                            tabla.addCell(tipo1);
                        }
                        documento.add(tabla);
                        
                         
                          break;
                      case "2":
                          st = cn.prepareCall("{call Totalventas()}");
                          rs = st.executeQuery();
                          
                             Font fontitulo1 = new Font(Font.FontFamily.UNDEFINED, 18, Font.BOLD, BaseColor.ORANGE);
                        par1.add(new Phrase("Reportes de Total de Ventas", fontitulo1));
                        par1.setAlignment(Element.ALIGN_CENTER);
                        par1.add(new Phrase(Chunk.NEWLINE));
                        par1.add(new Phrase(Chunk.NEWLINE));
                        documento.add(par1);

                        documento.open();
                        Font fontDescri1 = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL, BaseColor.BLACK);
                        par2.add(new Phrase("El total de usaurios dentro de la tienda", fontDescri1));
                        par2.setAlignment(Element.ALIGN_JUSTIFIED);
                        par2.add(new Phrase(Chunk.NEWLINE));
                        par2.add(new Phrase(Chunk.NEWLINE));
                        documento.add(par2);
                        Paragraph para1 = new Paragraph();
                        para1.add(new Chunk("\n "));
                        para1.add(new Chunk("\n "));
                        para1.add(new Chunk("\n"));
                        documento.add(para1);
                          
                          PdfPTable tabla2 = new PdfPTable(5);
                          PdfPCell celda01 = new PdfPCell(new Paragraph("Fecha Compra", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                          PdfPCell celda02 = new PdfPCell(new Paragraph("Monto", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                          PdfPCell celda03 = new PdfPCell(new Paragraph("Descuento", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                          PdfPCell celda04 = new PdfPCell(new Paragraph("IVA", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                          PdfPCell celda05 = new PdfPCell(new Paragraph("Total", FontFactory.getFont("Arial", 12, Font.BOLD, BaseColor.BLACK)));
                        
                        tabla2.addCell(celda01);
                        tabla2.addCell(celda02);
                        tabla2.addCell(celda03);
                        tabla2.addCell(celda04);
                        tabla2.addCell(celda05);
                       
                        while (rs.next()) {
                            tabla2.addCell(rs.getString(1));
                            tabla2.addCell(rs.getString(2));
                            tabla2.addCell(rs.getString(3));
                            tabla2.addCell(rs.getString(4)); 
                            tabla2.addCell(rs.getString(5));
                        }
                        documento.add(tabla2);
                          break;
                  }
                    
                 
                        
                        
                        documento.close();

                    } catch (Exception e) {
                        e.getMessage();
                    }
                }
                }catch (Exception ex) {
                ex.getMessage();
            }
                }finally {
            out.close();
        }

    }    

            @Override
            protected void doGet
            (HttpServletRequest request, HttpServletResponse response)
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


