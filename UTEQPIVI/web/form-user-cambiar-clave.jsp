<%-- 
    Document   : form-user-cambiar-clave
    Created on : 02-sep-2019, 23:20:15
    Author     : cris_
--%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Chage Password</title>
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
         <header class="cabeTer">
    <div class="cabeTerPrin">
        <img class="imglogoterapia" src="img/Physical%20Therapy_80px.png" alt="">
        <p class="titulogoterapia">therapy</p>
    </div>
    <div class="cabeTerSec">
        <p class="nombreUserCab">Username</p>
        <div class="contDDUser">
  <button class="btnUserInic dropdown-toggle" type="button" id="btnDDUser" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   <img src="img/User_80px.png" style="height: 50px; width: 50px;" alt="">
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <a class="dropdown-item" href="Login.jsp">Log in</a>
  </div>
</div>
    </div>
    
</header>

        <h1 style="color: #fff;">f</h1>


        <div style="max-width: 1300px; margin: auto;">
            <div style="max-width: 1300px; margin: auto;">

                <nav aria-label="breadcrumb" style="width: 90%; margin: auto;">
                    <ol class="breadcrumb">

                        <li class="breadcrumb-item ">Change Password</li>
                    </ol>
                </nav>
            </div>                 

            <div>
                <p class="ptxttituloinicioPIVI">Change Password</p>
            </div>
<form action="cambiar_clave" method="post">
            <div style='max-width: 600px; margin: auto;'>


                            <div class="divLine" style='margin-bottom: 10px;'>
                                <label  for="clave">Password</label>
                                <input name="password" type="text" class="form-control" id="clave" placeholder="Password" required>
                            </div>
                            <div   class="divLine" style='margin-bottom: 10px;'>
                                <label for="repclave">Confirm password</label>
                                <input onblur="validarClave()" type="text" class="form-control" id="repclave" placeholder="Confirm password" required>
                            </div>
                 <div style="display: flex; justify-content: space-between; max-width: 800px; margin: auto; margin-bottom: 50px; margin-top: 20px;">
                    <button  class="btnCardInicioEmp">Save</button> 
                </div>

                        </div>

</form>



        </div>

                                                  
  <h1 style="color: #fff;">f</h1>
    <h1 style="color: #fff;">f</h1>
      <h1 style="color: #fff;">f</h1>
        <h1 style="color: #fff;">f</h1>
          <h1 style="color: #fff;">f</h1>
        <!-- Site footer -->
        <footer style='float:bottom;'>
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
        
        <script>
            function validarClave() {
                var clave1 = document.getElementById("clave").value;
                var clave2 = document.getElementById("repclave").value;
                if (clave1.toString() !== clave2.toString()) {
                    document.getElementById("clave").value = "";
                    document.getElementById("repclave").value = "";
                }
            }
        </script>
        
    </body>
</html>