<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link rel="stylesheet" href="CSS/headterapia.css">
        <link rel="stylesheet" href="CSS/navbar.css">
        <link rel="stylesheet" href="CSS/terapia.css">
        <link rel="stylesheet" href="CSS/Header.css">
        <link href="https://file.myfontastic.com/KUSjhGwyNQvSXLXxGjhcHh/icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="CSS/bootstrap.min.css" rel="stylesheet" />
        <link href="CSS/modal.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>

        <link rel="stylesheet" href="font_awesome/css/font-awesome.min.css">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">	
        <link rel="stylesheet" href="CSS/bootstrap.min.css"/>
        <link  type="text/css" rel="stylesheet" href="CSS/inicio.css"/>      
        <link type="text/css" rel="stylesheet" href="CSS/slick.css"/>
        <link type="text/css" rel="stylesheet" href="CSS/slick-theme.css"/>	
        <link type="text/css" rel="stylesheet" href="CSS/nouislider.min.css"/>	
        <link rel="stylesheet" href="CSS/font-awesome.min.css">	
        <link type="text/css" rel="stylesheet" href="CSS/style.css"/>
        <link type="text/css" rel="stylesheet" href="CSS/navbar.css"/>
        <link rel="stylesheet" href="CSS/flexslider.css" type="text/css">  
    </head>

    <body>
        <div class="NavBarTop">
            <div class="NombUser">
                <%!HttpSession session; %>
                <%
                  session = (HttpSession)request.getSession(false);
                  String Usuario= (String)session.getAttribute("User");
                  if (Usuario== null) {
                          response.sendRedirect("Login.jsp");
                      }else{
                  }
                %>
                <img src="Imagenes/Checked%20User%20Male_40px.png" alt="" class="iconoUse" style="color: #2B579A;">
                <p style="color: #fff; margin-top: 18px; margin-left: 10px; font-size: 15px;" ><%=Usuario%></p>
            </div>
            <div class="CerrarSesionCont">
                <img src="Imagenes/Sign%20Out_40px.png" alt="" class="iconoCerrarSesion">
                <button type="button" style="border-style: none; background: #1E1F29; color: #fff; margin-top: 12px; margin-left: 10px; font-size: 15px;"  data-toggle="modal" data-target="#exampleModal">Cerrar Sesion</button>
            </div>
        </div>

        <header style="background: #17466B;  justify-content: space-around;">
            <div class="logo" style="z-index:20;">
                <img src="Imagenes/logo2.png" alt="" class="imgnavbar">
            </div>
            <nav style="z-index:20">
                <ul>
                    <li><a href="home.jsp">Inicio</a></li>
                    <li class="sub-menu"><a href="#">Usuario</a>
                        <ul>
                            
                            <%
                              String Rol=(String)session.getAttribute("tipo");
                               if (Rol=="CA"||Rol=="CT") {%>
                            <li><a href="#">Registro de pacientes</a></li>
                            <li><a href="prescripcion.jsp">Registro de prescripción</a></li>
                            <li><a href="ListarPaciente.jsp">Reportes</a></li>
                            <%}else{%>
                                <li><a href="#">Puzzle</a></li>
                                <li><a href="#">Smart Bootle</a></li>
                                <li><a href="#">Pelota</a></li>
                            <%}%>
                            
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>       
        </header>

                                              

        <!-- Site footer -->
        <footer>
            <div class="FtPV" style="margin-top: 75vh">
                <span style="text-align: center; color: #fff; margin: auto; margin-top: 40px; font-size: 15px; justify-content: center;">

                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                     Proyecto Integrador VI - UTEQ

                </span>
            </div>
        </footer>
        <script type="text/javascript">
            $('#exampleModal').on('show.bs.modal', function (event) {
                var button = $(event.relatedTarget) // Button that triggered the modal
                var recipient = button.data('whatever') // Extract info from data-* attributes
                // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
                // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
                var modal = $(this)
                modal.find('.modal-title').text('New message to ' + recipient)
                modal.find('.modal-body input').val(recipient)
            })
        </script>

        <script src="JS/codigo.js"></script>
        <script src="JS/jquery.min.js"></script>
        <script src="JS/bootstrap.min.js"></script>
        <script src="JS/slick.min.js"></script>
        <script src="JS/nouislider.min.js"></script>
        <script src="JS/jquery.zoom.min.js"></script>
        <script src="JS/main.js"></script>
        <script src="JS/jquery.flexslider.js"></script>
        <script src="JS/jquery.flexslider-min.js"></script>
        <script
        src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('.menu-toggle').click(function () {
                    $('nav').toggleClass('active')
                })
                $('ul li').click(function () {
                    $(this).siblings().removeClass('active');
                    $(this).toggleClass('active');
                })

            })
        </script>
    </body>
</html>
