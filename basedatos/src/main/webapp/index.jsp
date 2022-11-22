<%-- 
    Document   : index
    Created on : 18 may 2022, 16:57:23
    Author     : paula
--%>
<%@page import="Datos.WrapperWikidata"%>
<%@page import="Datos.WrapperPlayStore"%>
<%@page import="Datos.WrapperAppstore"%>
<%@page import="Modelo.Privacidad"%>
<%@page import="Modelo.DatosDeUsuario"%>
<%@page import="Modelo.App"%>
<%@page language="java" import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>APPSPrivacity Consultor</title>

    <link rel="stylesheet" href="./assets/css/maicons.css" />

    <link rel="stylesheet" href="./assets/css/bootstrap.css" />

    <link rel="stylesheet" href="./assets/vendor/animate/animate.css" />

    <link rel="stylesheet" href="./assets/css/theme.css" />

    <link rel="stylesheet" href="./assets/css/style.css" />

    <!-- AppsDB icon -->
    <link rel="icon" href="./assets/images/cloud-data-300.png">    
  </head>
  <body>
    <!-- Back to top button -->
    <div class="back-to-top"></div>
    <header>
      <!-- NAVBAR -->
      <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
        <div class="container">
          <a href="index.jsp" class="navbar-brand">APPS<span class="text-primary">Privacity</span></a>
        </div>
      </nav>
      <!-- NAVBAR -->

      <div class="container">
        <div class="page-banner">
          <div class="row justify-content-center align-items-center h-100">
            <div class="col-md-6">
              <div class="img-fluid text-center">
                <img src="./assets/images/cloud-data-300.png" alt="cloud-data image"/>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="img-fluid text-center" ><a href="#respuestas" class="btn-scroll" data-role="smoothscroll">
                    <span class="mai-arrow-down">Resultados</span></a></div>
    </header>

    <div class="page-section">
      <div class="container">

        <div class="row align-items-center">
          <div class="col-lg-12 py-3">
            <h2 class="title-section">
              ¿Listo para preguntar?
              <span class="mai-bulb-outline"></span>
            </h2>
            <div class="divider"></div>

            <!-- LOGIN FORM -->
            <form method="post" action="Servlet">
              <div class="form-group row text-left">
                <label for="nameapp" class="col-sm-4 col-form-label"style="color: #8e44ad">App:</label>
                <div class="col-sm-8">
                  <input
                    type="name"
                    name="name"
                    class="form-control"
                    id="name"
                    placeholder="Enter app name"
                  />
                </div>
              </div>
              <div class="form-group row text-left">
                <label for="SO" class="col-sm-4 col-form-label"style="color: #8e44ad">Sistema Operativo:</label>
                 <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox1" name="atributos" value=Android> Android</label>
                 <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox2" name="atributos" value=iOS> iOS</label>
                </div>
              <div class="form-group row text-left">
                <label for="SO" style="color: #8e44ad" class="col-sm-4 col-form-label">Area:</label>
                <label class="col-sm-4  col-form-label"><input type="checkbox" id="cbox3" name="atributos" value=Mensajeria> Mensajeria</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox4" name="atributos" value=Social> Social</label>
                </div>
                <div class="form-group row text-left">
                <label for="SO" class="col-sm-4 col-form-label"style="color: #8e44ad">Opciones:</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox5" name="atributos" value=4> Información a terceros</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox6" name="atributos"value=5> Publicidad en la app</label>
                </div>
                <div class="form-group row text-left">
                <label for="SO" class="col-sm-4 col-form-label"style="color: #8e44ad">Informacion de la empresa</label>
                </div>
                <div class="form-group row text-left">
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox5" name="atributos" value=18> Nombre</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox6" name="atributos"value=19> Nombre app</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox6" name="atributos"value=20> URL</label>
                </div>
                <div class="form-group row text-left">
                <label for="SO" class="col-sm-4 col-form-label"style="color: #8e44ad">Datos que puede recopilar:</label>
                </div>
                <div class="form-group row text-left">
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox9" name="atributos" value=6> Datos Contacto</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox10" name="atributos" value=7> Credenciales</label> 
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox11" name="atributos" value=8> Ubicacion</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox12" name="atributos" value=9> Pagos</label> 
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox13" name="atributos" value=10> Historial Busqueda</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox14" name="atributos" value=11> Información de errores</label> 
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox15" name="atributos" value=12> Multimedia</label> 
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox16" name="atributos" value=13> Agenda</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox17" name="atributos" value=14> Información de uso</label>
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox18" name="atributos" value=15> Idioma</label> 
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox19" name="atributos" value=16> Información del dispositivo</label> 
                <label class="col-sm-4 col-form-label"><input type="checkbox" id="cbox20" name="atributos" value=17> Salud</label> 
                </div>
                <div class="form-group row text-left">
                <label for="SO" class="col-sm-4 col-form-label"style="color: #8e44ad">Resultados:</label>
                </div>
                <% 
                    ArrayList<App> apps = (ArrayList<App>)request.getAttribute("output");
                    if(apps==null){
                        %><output id="respuestas">No existe respuesta para tu consulta</output><%
                    }else{
                       for(int i=0;i<apps.size();i++){
                            App app = apps.get(i);
                            if(app==null){%>
                             <output id="respuestas">Los campos estan vacíos, seleccione algún atributo o introduzca nombre</output>
                            <%}else{%>

                              <output id="respuestas">
                                  Nombre app: <%= app.getName()%><br>
                                  <%if(app.getSO()!=""){%>Sistema Operativo: <%= app.getSO()%><%}%><br>
                                  <%if(app.getArea()!=""){%>Sistema Area: <%= app.getArea()%><%}%><br>
                                  <%if(app.getPrivacidad().getVersion()!=""){%>Informacion sobre privacidad:<br><label></label><%}%>
                                  <%if(app.getPrivacidad().getVersion()!=""){%> Version:<%= app.getPrivacidad().getVersion()%> <br><label></label><%}%>
                                  <%if(app.getPrivacidad().getInfTerceros()!=""){%>Información a terceros: <%= app.getPrivacidad().getInfTerceros()%><%}%><br><label></label>
                                  <%if(app.getPrivacidad().getPubli()!=""){%>Publicidad <%= app.getPrivacidad().getPubli()%><%}%><br><label></label>
                                  <%if(app.getEmpresa()!=null){%>
                                     Informacion sobre datos de empresa de la app: <br><label></label>
                                     <%if(app.getEmpresa().getNombre()!=""){%>Nombre de la empresa: <%= app.getEmpresa().getNombre()%><br><label></label><%}%>
                                     <%if(app.getEmpresa().getNombre_app()!=""){%>Nombre de la app: <%= app.getEmpresa().getNombre_app()%><br><label></label><%}%>
                                     <%if(app.getEmpresa().getURL()!=""){%>URL de la app: <%= app.getEmpresa().getURL()%><br><label></label><%}%>
                                  <%}%>
                                  <%if(app.getDatos()!=null){%>
                                   Informacion sobre datos de usuario que recopila: <br><label></label>
                                   <%if(app.getDatos().getContacto()!=""){%>Información de contacto: <%= app.getDatos().getContacto()%><br><label></label><%}%>
                                   <%if(app.getDatos().getCredenciales()!=""){%>Información de credenciales: <%= app.getDatos().getCredenciales()%><br><label></label><%}%>
                                   <%if(app.getDatos().getDemografia()!=""){%>Información demografica: <%= app.getDatos().getDemografia()%><br><label></label><%}%>

                                   <%if(app.getDatos().getPagos()!=""){%>Información de pagos: <%= app.getDatos().getPagos()%><br><label></label><%}%>
                                   <%if(app.getDatos().getHistorial_de_Busquedas()!=""){%>Información de historal de busqueda: <%= app.getDatos().getHistorial_de_Busquedas()%><br><label></label><%}%>
                                   <%if(app.getDatos().getInformes_de_Errores()!=""){%>Información errores: <%= app.getDatos().getInformes_de_Errores()%><br><label></label><%}%>

                                   <%if(app.getDatos().getMultimedia()!=""){%>Información de multimedia: <%= app.getDatos().getMultimedia()%><br><label></label><%}%>
                                   <%if(app.getDatos().getAgenda()!=""){%>Información de agenda: <%= app.getDatos().getAgenda()%><br><label></label><%}%>
                                   <%if(app.getDatos().getInformacion_De_Uso()!=""){%>Información de uso: <%= app.getDatos().getInformacion_De_Uso()%><br><label></label><%}%>

                                   <%if(app.getDatos().getIdioma()!=""){%>Información de idioma: <%= app.getDatos().getIdioma()%><br><label></label><%}%>
                                   <%if(app.getDatos().getInformacion_sobre_el_Dispositivo()!=""){%>Información del dispositivo: <%= app.getDatos().getInformacion_sobre_el_Dispositivo()%><br><label></label><%}%>
                                   <%if(app.getDatos().getFitness()!=""){%>Información sobre salud: <%= app.getDatos().getFitness()%><br><label></label><%}%>
                                  <%}%>

                               </output>                           
                            <%}
                        }%>
                    <%}%>
               </div>  
               </div>  
              </div>
                           
              <!-- Button converted to a link for demonstration purposes only, in order to show the table management page for a logged-in user. -->
              <!-- <button type="submit" class="btn btn-primary">Login</button> -->
              <div class="row">
                <div class="col-sm-12 text-center">
                   <input type="submit" class="btn btn-primary" onclick="limpiar()" value="Consultar" name="consultar">
                   <script>
                       function limpiar() {
                            document.getElementById("respuestas").value = "";
                        }
                   </script>
                </div>
              </div>

            </form>
            <!-- END LOGIN FORM -->
          </div>
          <!-- .col -->
        </div>
        <!-- .row -->
      </div>
    </div>

    <!-- FOOTER -->
    <footer
      class="page-footer bg-image"
      style="background-image: url(./assets/images/world_pattern.svg)"
    >
      <div class="container">
        <div class="row mb-5">
          <div class="col-lg-6 py-3">
            <h3>APPS Privacity</h3>
            <p>
              Follow us on our social channels.
            </p>

            <div class="social-media-button">
              <a href="https://www.facebook.com/"><span class="mai-logo-facebook-f"></span></a>
              <a href="https://twitter.com/"><span class="mai-logo-twitter"></span></a>
              <a href="https://www.instagram.com/"><span class="mai-logo-instagram"></span></a>
              <a href="https://www.youtube.com/"><span class="mai-logo-youtube"></span></a>
            </div>
          </div>
          
          <div class="col-lg-6 py-3">
            <h5>Contact Us</h5>
            <p><a href="https://goo.gl/maps/Kr9kD6ZVdLPDxUTy8" class="footer-link">Inf-UVa, P.º de Belén, 15, 47011, Valladolid, Spain</a></p>
            <p><a href="tel:+34 123 45 67 89" class="footer-link">+34 123 45 67 89</a></p>
            <p><a href="mailto:saii@fake.email.com" class="footer-link">saii@fake.email.com</a></p>
          </div>
          
        </div>
      </div>
    </footer>
    <!-- END FOOTER-->

    <script src="./assets/js/jquery-3.5.1.min.js"></script>

    <script src="./assets/js/bootstrap.bundle.min.js"></script>

    <script src="./assets/vendor/wow/wow.min.js"></script>

    <script src="./assets/js/theme.js"></script>
  </body>
</html>
