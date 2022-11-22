/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Datos.ConsultarDB;
import Modelo.App;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author paula
 */
@WebServlet(name = "Servlet", urlPatterns = {"/Servlet"})
public class Servlet extends HttpServlet {

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
        ArrayList<App> app = new ArrayList<>();
        String[] valores = new String [18];
        boolean[] valoresopt = new boolean [21];
        try {
            /* TODO output your page here. You may use following sample code. */
            
            String name=request.getParameter("name").toUpperCase();
            String[] atributos = request.getParameterValues("atributos");
            if(atributos!=null){
                for(int i=0;i<18;i++){
                    valores[i]="FALSE";
                }
                for(int j=0;j<19;j++){
                    valoresopt[j]=false;
                }
                for (String atributo : atributos) {
                    switch (atributo) {
                        case "Android":
                            valores[0] = "ANDROID";
                            valoresopt[0]=true;
                            break;
                        case "iOS":
                            valores[1] = "iOs";
                            valoresopt[0]=true;
                            break;
                        case "Mensajeria":
                            valores[2] = "MENSAJERIA";
                            valoresopt[1]=true;
                            break;
                        case "Social":
                            valores[3] = "SOCIAL";
                            valoresopt[1]=true;
                            break;
                        case "18":
                            valoresopt[16]=true;
                            break;
                        case "19":
                            valoresopt[17]=true;
                            break;
                        case "20":
                            valoresopt[18]=true;
                            break;
                        default:
                            valores[Integer.parseInt(atributo)] = "TRUE";
                            valoresopt[Integer.parseInt(atributo)-2]=true;
                            break;
                    }
                }
                String atrconsult="";
                    if(!"FALSE".equals(valores[0])){
                        atrconsult=atrconsult+" AND a.SO LIKE \"%"+valores[0]+"%\"";
                    }
                    if(!"FALSE".equals(valores[1])){
                        atrconsult=atrconsult+" AND a.SO LIKE \"%"+valores[1]+"%\"";
                    }
                    if(!"FALSE".equals(valores[2])){
                        atrconsult=atrconsult+" AND a.A=\""+valores[2]+"\"";
                    }
                    if(!"FALSE".equals(valores[3])){
                        atrconsult=atrconsult+" AND a.A=\""+valores[3]+"\"";
                    }
                    if(!"FALSE".equals(valores[4])){
                        atrconsult=atrconsult+" AND p.IT=\""+valores[4]+"\"";
                    }
                    if(!"FALSE".equals(valores[5])){
                        atrconsult=atrconsult+" AND p.P=\""+valores[5]+"\"";
                    }
                    if(!"FALSE".equals(valores[6])){
                        atrconsult=atrconsult+" AND d.CON=\""+valores[6]+"\"";
                    }
                    if(!"FALSE".equals(valores[7])){
                        atrconsult=atrconsult+" AND d.CRE=\""+valores[7]+"\"";
                    }
                    if(!"FALSE".equals(valores[8])){
                        atrconsult=atrconsult+" AND d.D=\""+valores[8]+"\"";
                    }
                    if(!"FALSE".equals(valores[9])){
                        atrconsult=atrconsult+" AND d.PA=\""+valores[9]+"\"";
                    }
                    if(!"FALSE".equals(valores[10])){
                        atrconsult=atrconsult+" AND d.HB=\""+valores[10]+"\"";
                    }
                    if(!"FALSE".equals(valores[11])){
                        atrconsult=atrconsult+" AND d.IE=\""+valores[11]+"\"";
                    }
                    if(!"FALSE".equals(valores[12])){
                        atrconsult=atrconsult+" AND d.M=\""+valores[12]+"\"";
                    }
                    if(!"FALSE".equals(valores[13])){
                        atrconsult=atrconsult+" AND d.A=\""+valores[13]+"\"";
                    }
                    if(!"FALSE".equals(valores[14])){
                        atrconsult=atrconsult+" AND d.IDU=\""+valores[14]+"\"";
                    }
                    if(!"FALSE".equals(valores[15])){
                        atrconsult=atrconsult+" AND d.I=\""+valores[15]+"\"";
                    }
                    if(!"FALSE".equals(valores[16])){
                        atrconsult=atrconsult+" AND d.ISD=\""+valores[16]+"\"";
                    }
                    if(!"FALSE".equals(valores[17])){
                        atrconsult=atrconsult+" AND d.SF=\""+valores[17]+"\"";
                    }
                if(!name.equals("")){
                    app=ConsultarDB.ConsultTotalAPP(name,valoresopt);
                }else{
                    app=ConsultarDB.ConsultarNombre(atrconsult,valoresopt);
                }
            }else{
                app=ConsultarDB.ConsultTotalAPP(name,valoresopt);
            }
        }catch(NumberFormatException e){
            System.out.println(e);
        }
        
        try{
            String nextStep = "/index.jsp";
                RequestDispatcher dispatcher =
                        getServletContext().getRequestDispatcher(nextStep);
                        request.setAttribute("output", app);
                dispatcher.forward(request, response);
        }catch(IOException | ServletException e){
             System.out.println("EERRO2:: "+e);
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
