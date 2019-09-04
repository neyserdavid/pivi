<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>PROYECTOVI</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
        <link href="CSS/login.css" rel="stylesheet" type="text/css"/>
        <%
            HttpSession varsesion =request.getSession(true); %>
        <%
            
        varsesion.setAttribute("tipo", "CT");
        varsesion.setAttribute("User", "Neyser Vega");
        %>
    </head>
    <body> 
        <div class="cont">
            <div class="demo">
                <div class="login">
                 
                    <div class="login__Imagen">
                        <img src="Imagenes/login_opt.jpg" alt=""/>
                    </div>      
                      
                    <div class="login__form">
                        <div class="login__row">
                            <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
                            <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
                            </svg>
                            <input required="" id="usuario" type="text" class="login__input name" placeholder="Nombre de usuario"/>
                        </div>
                        <div class="login__row">
                            <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
                            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
                            </svg>
                            <input required="" id="clave" type="password" class="login__input pass" placeholder="Clave"/>   
                        </script>
                            <input type="submit" class="login__submit" value="Iniciar Sesion" />
                            <p class="login__signup">Olvidaste la clave? &nbsp; <a> Ingresa aqui </a> </p>
                    </div>
                   </form>
       
                </div>
            </div>
        </div>
         <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
         <script src="JS/script.js" type="text/javascript"></script>
        
    </body>
</html>