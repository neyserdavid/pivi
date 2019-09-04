<!DOCTYPE html>
<html lang="en">
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
                <img src="Imagenes/Checked%20User%20Male_40px.png" alt="" class="iconoUse" style="color: #2B579A;">
                <p style="color: #fff; margin-top: 18px; margin-left: 10px; font-size: 15px;" >${sessionScope.userL}</p>
            </div>
            <div class="CerrarSesionCont">
                <img src="Imagenes/Sign%20Out_40px.png" alt="" class="iconoCerrarSesion">
                <button type="button" style="border-style: none; background: #1E1F29; color: #fff; margin-top: 12px; margin-left: 10px; font-size: 15px;"  data-toggle="modal" data-target="#exampleModal">Iniciar sesion</button>
                <a href="cerrarSession.jsp">cerrar</a>            
            </div>
        </div>
        <header style="background: #17466B;  justify-content: space-around;">
            <div class="logo" style="z-index:20;">
                <img src="Imagenes/logo2.png" alt="" class="imgnavbar">
            </div>
            <div >
                <p style="color :#17466B;">hola</p>
            </div>
            <nav style="z-index:20">
                <ul>
                    <li><a href="#">Inicio</a></li>
                    <li class="sub-menu"><a href="#">Usuario</a>
                        <ul>
                            <li><a href="#">Ver Perfil</a></li>
                            <li><a href="#">Reportes</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu"><a href="#">Configuraci�n</a>
                        <ul>
                            <li><a href="#">Mis progreso</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></div>       
        </header>
        <h1 style="color: #fff;">f</h1>
        <h1 style="color: #fff;">f</h1>
        <div style="max-width: 1300px; margin: auto;">
            <nav aria-label="breadcrumb" style="width: 90%; margin: auto;">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page">Inicio</li>
                    <li class="breadcrumb-item active" aria-current="page">Prescripci�n</li>
                </ol>
            </nav>
            <div style="width: 90%; margin: auto;">
                <div>
                    <p class="ptxttituloinicioPIVI">PREESCRIPCI�N</p>
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
                                <option value="Marr�n"></option>
                                <option value="Naranja"></option>
                                <option value="Verde"></option>
                                </datalist>
                                
                                <input id="txtbuscador" list="pacientes" name="colores" type="text" class="txtBuscador" placeholder="Buscar Paciente...">
                                <button type="submit" class="btnBuscador" runat ="server" onserverclick="btnbuscar_ServerClick">
                                    <i class="fa fa-search"></i>
                                </button>
                            </fieldset>
                            <div style="margin-top: 10px; position: inherit; ">
                                <label class="container">_  C�dula
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
                                <label for="indescripcion">Descripci�n</label>
                                <select id="indescripcion" class="form-control" >
                                    <optgroup label="Extremidades Superiores">
                                        <option selected id="idAgarre">Agarre</option>
                                        <option selected id="idMovimientosHorizontales">Movimientos horizontales</option>
                                        <option selected id="idRompecabezas">Rompecabezas</option>
                                        <option selected id="idLegos">Pir�mide de Legos</option>
                                        <option selected id="idLevantarCosas">Guardar Objetos</option>
                                    </optgroup>
                                    <optgroup label="Extremidades Inferiores">
                                        <option selected idP="idPieEnLaPelota">Pie en la pelota</option>
                                        <option selected id="idFlexion">Flexi�n-Extensi�n Extremidad</option>
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
                                <input type="submit" value="A�adir" class="btna�adir">
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
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <form action="Login">
            <div class="modal-content">
                <div class="modal-header">    
                    <p style="font-size: 30px; font-weight: 600; text-align: center; padding-left: 120px; padding-top: 10px; "  > Iniciar sesion </p>    

                </div>
                <div style="justify-content: center;">
                    <img src="Imagenes/usuario-sin-foto.png" style="height: 150px; width: 150px; margin-top: 10px; margin-bottom: 10px; border-radius: 400px; margin: auto; margin-left: 165px;" alt="">
                    <p style="text-align: center; font-size: 20px; font-weight: 600">Usuario</p>
                </div>
                <div class="modal-body">
                    <div class="form-group">

                        <div style="display: flex; flex-wrap: wrap;">
                            <img src="Imagenes/User_40px.png" style="height: 40px; width: 40px; margin-right: 12px; margin-left: 2px;" alt="">
                            <input type="text" class="form-control"  name="user" style="width: 85%; height: 40px;" id="txtNombreUser">
                        </div>

                    </div>
                    <div class="form-group">

                        <div style="display: flex; flex-wrap: wrap;">
                            <img src="Imagenes/Password_40px.png" style="height: 40px; width: 40px; margin-right: 12px; margin-left: 2px;" alt="">
                            <input type="password" class="form-control" name="password" style="width: 85%; height: 40px;" id="txtNombrePass">
                        </div>
                    </div>

                </div>
                <div class="modal-footer" style="justify-content: center;">

                    <button type="submit" class="btn btn-primary" style="width: 280px">Ingresar</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal" style="width: 278px">Cerrar</button>
                </div>
                <p style="text-align: center;">�Olvid� su contrase�a?</p>
            </div>
        </form>
    </div>
</div>   
<div class="modal fade" id="modalTerapiaDiaria" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">    
                <h5 style="text-align: center; font-size: 30px; font-weight: 600;" id="exampleModalLabel">Iniciar</h5>    
            </div>
            <div style="justify-content: center;">
                <img src="Imagenes/usuario-sin-foto.png" style="height: 150px; width: 150px; text-align: center; margin: auto; margin-top: 10px; margin-bottom: 10px; border-radius: 400px;" alt="">
                <p style="text-align: center; font-size: 20px; font-weight: 600">Usuario</p>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <div style="display: flex; flex-wrap: wrap;">
                            <img src="Imagenes/User_40px.png" style="height: 40px; width: 40px; margin-right: 12px; margin-left: 2px;" alt="">
                            <input type="text" class="form-control" style="width: 85%; height: 40px;" id="recipient-name">
                        </div>
                    </div>
                    <div class="form-group">
                        <div style="display: flex; flex-wrap: wrap;">
                            <img src="Imagenes/Password_40px.png" style="height: 40px; width: 40px; margin-right: 12px; margin-left: 2px;" alt="">
                            <input type="email" class="form-control" style="width: 85%; height: 40px;" id="recipient-name">
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer" style="justify-content: center;">

                <button type="button" class="btn btn-primary" style="width: 280px">Ingresar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal" style="width: 278px">Cerrar</button>
            </div>
            <p style="text-align: center;">�Olvid� su contrase�a?</p>
        </div>
    </div>
</div>                                                     
<!-- Site footer -->
<footer>
    <div class="FtPV">
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
<!--Modal-->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content -->
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Title</h4>
                <input type="button" class="close btnClose" data-dismiss="modal" value="X"/>
            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
                <input id="btnAtras" type="button" class="btn btn-default" value="< Atras"/>
                <input id="btnFooter" type="button" class="btn btn-default" value="Crear"/>
                <input type="button" class="btn btn-default btnClose" value="Cancelar"/>
            </div>
        </div>
    </div>
</div>
</body>
</html>