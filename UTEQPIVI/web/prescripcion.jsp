<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
        <link rel="stylesheet" href="CSS/headterapia.css">
        <link rel="stylesheet" href="CSS/navbar.css">
        <link rel="stylesheet" href="CSS/terapia.css">
        <link rel="stylesheet" href="CSS/Header.css">
        <script src="JS/jquery-ui.js" type="text/javascript"></script>
        <link href="CSS/entradas.css" rel="stylesheet" type="text/css"/>
        <script src="JS/uncompressed.jquery.dd.js" type="text/javascript"></script>
        <script src="JS/jquery-1.3.2.min.js" type="text/javascript"></script>
        <script src="JS/jquery-1.6.1.min.js" type="text/javascript"></script>
        <script src="JS/jquery.dd.js" type="text/javascript"></script>
        <script src="JS/test.js" type="text/javascript"></script>
        <link href="CSS/dd.css" rel="stylesheet" type="text/css"/>
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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link type="text/css" rel="stylesheet" href="CSS/slick.css"/>
        <link type="text/css" rel="stylesheet" href="CSS/slick-theme.css"/>	
        <link type="text/css" rel="stylesheet" href="CSS/nouislider.min.css"/>	
        <link rel="stylesheet" href="CSS/font-awesome.min.css">	
        <link type="text/css" rel="stylesheet" href="CSS/style.css"/>
        <link type="text/css" rel="stylesheet" href="CSS/navbar.css"/>
        <link rel="stylesheet" href="CSS/flexslider.css" type="text/css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 
    </head>

    <body>
        <div class="NavBarTop">
            <div class="NombUser">
                <%!HttpSession session;%>
                <%
                    session = (HttpSession) request.getSession(false);
                    String Usuario = (String) session.getAttribute("User");
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
                                String Rol = (String) session.getAttribute("tipo");
                                if (Rol == "CA" || Rol == "CT") {%>
                            <li><a href="#">Registro de pacientes</a></li>
                            <li><a href="prescripcion.jsp">Registro de prescripción</a></li>
                            <li><a href="ListarPaciente.jsp">Reportes</a></li>
                                <%} else {%>
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

                                
                                
        <div style="width: 90%; margin: auto;">
            <div>
                <p class="ptxttituloinicioPIVI">PREESCRIPCIÓN</p>
            </div>
            <div >
                <div style="width: 80%; margin: auto;">
                    <div style='margin-bottom: 40px'>
                        <fieldset class="field">
                            <datalist id="pacientes">
                                <option value="Azul"></option>
                                <option value="Amarillo"></option>
                                <option value="Burdeos"></option>
                                <option value="Caoba"></option>
                                <option value="Marrón"></option>
                                <option value="Naranja"></option>
                                <option value="Verde"></option>
                            </datalist>

                            <input style="width:95%" id="txtbuscador" list="pacientes" name="colores" type="text" class="txtBuscador" placeholder="Buscar Paciente...">
                            <button type="submit" class="btnBuscador" runat ="server" onserverclick="btnbuscar_ServerClick">
                                <i class="fa fa-search"></i>
                            </button>
                        </fieldset>
                        <div style="margin-top: 10px; position: inherit; ">
                            <label class="container">_  Cédula
                                <input type="checkbox" checked="checked">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container">_  Nombre
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                        </div>                        
                    </div> 
                    <div class="card">
                        <div class="divLine">
                            <label for="indescripcion">Descripción</label>
                            <select id="indescripcion" class="form-control" >
                                <optgroup label="Extremidades Superiores">
                                    <option selected id="idAgarre">Agarre</option>
                                    <option selected id="idMovimientosHorizontales">Movimientos horizontales</option>
                                    <option selected id="idRompecabezas">Rompecabezas</option>
                                    <option selected id="idLegos">Pirámide de Legos</option>
                                    <option selected id="idLevantarCosas">Guardar Objetos</option>
                                </optgroup>
                                <optgroup label="Extremidades Inferiores">
                                    <option selected idP="idPieEnLaPelota">Pie en la pelota</option>
                                    <option selected id="idFlexion">Flexión-Extensión Extremidad</option>
                                </optgroup>
                            </select>
                        </div>
                        <div class="divLine">
                            <label for="inrepeticionesD">Repeticiones Diarias</label>
                            <input type="text" class="form-control" id="inrepeticionesD" placeholder="Repeticiones Diarias" required>
                        </div>
                        <div class="divLine">
                            <label for="inrepeticionesM">Dias al mes</label>
                            <input type="text" class="form-control" id="inrepeticionesM" placeholder="Cantidad de dias al mes" required>
                        </div>
                        <div class="divLine">
                            <label for="fechaInicioID">Fecha de Inicio</label>
                            </br>
                            <input id="fechaInicioID" type="date" name="fecha" min="2019-08-23" step="2" required="">
                        </div>
                        <div class="divLine">
                            <label for="fechafinID">Fecha de Fin</label>         
                            </br>
                            <input id="fechafinID" type="date" name="fecha" min="2019-08-23" step="2" required="">
                        </div>
                        <div class="divLine">
                            <input type="submit" value="Añadir" class="btnañadir">
                        </div>
                        <%--TABLA--%>

                        <table class="table" style="width: 95%; margin: 20px; margin-bottom: 10px; ">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Descripcion</th>
                                    <th scope="col">Repeticiones Diarias</th>
                                    <th scope="col">Dias al mes</th>
                                    <th scope="col"></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Legos</td>
                                    <td>5</td>
                                    <td>25</td>
                                    <td>
                                        <div style="display: flex;">
                                            <button type="submit" class="btndeletetable"><img src="img/icons8-eliminar-64.png" alt="Imagen" /></button>
                                            <button type="submit" class="btnupdatetable"><img src="img/icons8-editar-80.png" alt="Imagen" /></button>
                                        </div>
                                    </td>

                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Rompecabeza</td>
                                    <td>3</td>
                                    <td>20</td>
                                    <td>
                                        <div style="display: flex;">
                                            <button type="submit" class="btndeletetable"><img src="img/icons8-eliminar-64.png" alt="Imagen" /></button>
                                            <button type="submit" class="btnupdatetable"><img src="img/icons8-editar-80.png" alt="Imagen" /></button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Levantar cosas</td>
                                    <td>4</td>
                                    <td>15</td>
                                    <td>
                                        <div style="display: flex;">
                                            <button type="submit" class="btndeletetable"><img src="img/icons8-eliminar-64.png" alt="Imagen" /></button>
                                            <button type="submit" class="btnupdatetable"><img src="img/icons8-editar-80.png" alt="Imagen" /></button>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table> 
                    </div>
                </div>
                <div style="display: flex; justify-content: space-between; max-width: 800px; margin: auto; margin-bottom: 50px;margin-top: 50px;">
                    <button class="btnCardInicioEmp" style="width: 310px">Guardar</button>
                    <button class="btnCardInicioEmp" style="width: 310px; ">Cancelar</button>
                </div>
            </div> 
            <div>
            </div>
        </div>                                     

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
