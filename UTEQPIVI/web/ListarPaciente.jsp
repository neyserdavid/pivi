<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
    <%String nombre = "";%>
    <body>
        <div class="NavBarTop">
            <div class="NombUser">
                <%!HttpSession session; %>
                <%
                  session = (HttpSession)request.getSession(false);
                  String Usuario= (String)session.getAttribute("User");
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

        <!-- Contenido -->
                <div id="conexiones2">
         //CONECTANOD A LA BASE DE DATOS:

                Connection connection;
                String bd = "pivi";
                String user = "postgres";
                String password = "AdM1n321";
                String url = "jdbc:postgresql://localhost:5432/" + bd + "";
                Class.forName("org.postgresql.Driver");
                connection = DriverManager.getConnection(url, user, password);
                //Emnpezamos Listando los Datos de la Tabla Usuario
                Statement smt;
                ResultSet rs;
                smt = connection.createStatement();
                rs = smt.executeQuery("select ROW_NUMBER() OVER(ORDER BY usuario.cedula) as Cant, preecripcion_terapia.idpreescripcion as id,usuario.cedula as cedula,usuario.nombre as nombre,usuario.apellido as apellido,usuario.sexo as sexo,usuario.fecha_de_nacimiento as fecha from preecripcion_terapia inner join usuario on preecripcion_terapia.idusuario=usuario.idusuario where idterapeuta=1");
                //Creamo la Tabla:     
            %>         <%
                //CONECTANOD A LA BASE DE DATOS:

                Connection connection;
                String bd = "pivi";
                String user = "postgres";
                String password = "AdM1n321";
                String url = "jdbc:postgresql://localhost:5432/" + bd + "";
                Class.forName("org.postgresql.Driver");
                connection = DriverManager.getConnection(url, user, password);
                //Emnpezamos Listando los Datos de la Tabla Usuario
                Statement smt;
                ResultSet rs;
                smt = connection.createStatement();
                rs = smt.executeQuery("select ROW_NUMBER() OVER(ORDER BY usuario.cedula) as Cant, preecripcion_terapia.idpreescripcion as id,usuario.cedula as cedula,usuario.nombre as nombre,usuario.apellido as apellido,usuario.sexo as sexo,usuario.fecha_de_nacimiento as fecha from preecripcion_terapia inner join usuario on preecripcion_terapia.idusuario=usuario.idusuario where idterapeuta=1");
                //Creamo la Tabla:
            %>
        </div>

        <form style="margin-top: 100px;">
            <div class="container">            
                <div style="padding-left: 800px">       
                    <table>               
                        <tr>

                            <th><input type="text" id="busca" class="form-control" name="txtbuscar" placeholder="Buscar"/>     </th>
                            <th><input type="submit" value="Buscar"/></th>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
        <%
            try {
                String busca = "";
                busca = request.getParameter("txtbuscar");
                int n = Integer.parseInt(request.getParameter("txtbuscar"));
                if (busca != null) {
                    smt = connection.createStatement();
                    rs = smt.executeQuery("select ROW_NUMBER() OVER(ORDER BY usuario.cedula) as Cant, preecripcion_terapia.idpreescripcion as id,usuario.cedula as cedula,usuario.nombre as nombre,usuario.apellido as apellido,usuario.sexo as sexo,usuario.fecha_de_nacimiento as fecha from preecripcion_terapia inner join usuario on preecripcion_terapia.idusuario=usuario.idusuario where idterapeuta=1 and usuario.cedula like '" + busca + "%';");
                }

            } catch (Exception e) {
                if (request.getParameter("txtbuscar") != null) {
                    smt = connection.createStatement();
                    rs = smt.executeQuery("select ROW_NUMBER() OVER(ORDER BY usuario.cedula) as Cant, preecripcion_terapia.idpreescripcion as id,usuario.cedula as cedula,usuario.nombre as nombre,usuario.apellido as apellido,usuario.sexo as sexo,usuario.fecha_de_nacimiento as fecha from preecripcion_terapia inner join usuario on preecripcion_terapia.idusuario=usuario.idusuario where idterapeuta=1 and usuario.nombre like '" + request.getParameter("txtbuscar") + "%';");
                }
            }
        %>

        <br>
        <div class="container">  

            <!--<a  class="btn btn-success" href="Agregar.jsp">Nuevo Registro</a> Esto es Cuando se Crea un nuevo Archivo Agregar.jsp -->         
            <table class="table table-bordered"  id="tablaDatos"  >
                <thead>
                    <tr>

                        <th class="text-center">ID</th>
                        <th class="text-center">Cedula</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellido</th>
                        <th class="text-center">sexo</th>
                        <th class="text-center">fecha</th>
                        <th class="text-center">Estadistica</th>

                    </tr>
                </thead>
                <tbody id="developers">
                    <%
                        while (rs.next()) {
                    %>
                    <tr>

                        <td class="text-center"><%= rs.getString("id")%></td>
                        <td class="text-center"><%= rs.getString("cedula")%></td>
                        <td class="text-center"><%= rs.getString("nombre")%></td>
                        <td class="text-center"><%= rs.getString("apellido")%></td>
                        <td class="text-center"><%= rs.getString("sexo")%></td>
                        <td class="text-center"><%= rs.getString("fecha")%></td>
                        
                        <td style="text-align: center" >
                            <div style="text-align: center" >
                                    <button type="submit"  class="reporte"><img src="img/chart.png" alt="Imagen" /></button>
                                </div>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
                <div class="col-md-12 text-center">
            <ul class="pagination pagination-lg pager" id="developer_page"></ul>
        </div>
            </table>
        </div>
        <!-- Fin de Contenido -->

        <!-- Site footer -->
        <footer>
            <div class="FtPV" style="margin-top: 75vh">
                <span style="text-align: center; color: #fff; margin: auto; margin-top: 40px; font-size: 15px; justify-content: center;">

                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                     Proyecto Integrador VI - UTEQ

                </span>
            </div>
        </footer>

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
                <script type="text/javascript">
            $(document).ready(function () {
                $('#developers').pageMe({
                    pagerSelector: '#developer_page',
                    showPrevNext: true,
                    hidePageNumbers: false,
                    perPage: 3
                });
            });
        </script>
    </body>
</html>
