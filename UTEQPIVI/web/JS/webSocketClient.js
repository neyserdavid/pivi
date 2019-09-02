
            var webSocket;
            var messages = document.getElementById("messages");


            function openSocket(){
                // Asegura que solo una conexión Websocket está abierta a la vez
                //El atributo readyState del objeto WebSocket refleja el estado de la conexión
                //WebSocket.CLOSED La conexión se ha cerrado o no se pudo abrir.
                if(webSocket !== undefined && webSocket.readyState !== WebSocket.CLOSED){
                 //  writeResponse("Conexión con Websocket establecida");
                 console.log("Conexión con Websocket establecida");
                    console.log(webSocket.protocol);   
                  
                   var text = "1";                            
                   console.log('Cliente (envía): ' + text);
                   webSocket.send(text);
                   countdown(contador(5),'cronometro','FIN');
                    return;
                }
                // Crea una nueva instancia del websocket - la ip debe ser la ip del servidor en este caso del Arduino
                webSocket = new WebSocket('ws://192.168.1.145');
                //var connection = new WebSocket('ws://'+location.hostname+':81/', ['arduino']);

                webSocket.onopen = function(event){
                    if(event.data === undefined)
                        return;
                    console.log('Conexión establecida');        
                   // writeResponse(event.data);
                };

                webSocket.onmessage = function(event){
                  //  writeResponse(event.data);
                  //  verValor(); 
                  
                var valorANT=document.getElementById('porcentaje').innerHTML;
                    console.log(event.data);
                document.getElementById('porcentaje').innerHTML=event.data.toString() + "%";                              //Crea el nodo DOM para el elemento c (canvas)
                console.log(document.getElementById("contador").innerHTML);
                var valor=event.data.toString();
                var cont=parseInt(document.getElementById("contador").value); 
                if(valor=="50.00")
                {
                   cont=cont+1;
                   document.getElementById("contador").value=cont;
                   document.getElementById("cont").innerHTML=cont;
               }
                    console.log('Cliente (recibe): ', event.data);
                };
                 webSocket.onerror = function(event){
                    console.log('Error: ', event.data);
                };
                
                webSocket.onclose = function(event){                   
                    console.log('conexión cerrada');
                   
                };
             

            }

            /**
             * Envía el valor de la entrada de texto al servidor
             */
            
            function contador(){
             //  var cont=parseInt(document.getElementById("contador").value); 
            //   var porcentaje=document.getElementById("porcentaje").value.toString(); 
               console.log(document.getElementById("porcent").value.toString());
               //   cont=cont+1;                   
               
              // document.getElementById("contador").value=cont;
            }
 /** setInterval(function() {    
      if (socket.bufferedAmount == 0)
      socket.send(getUpdateData());
  }, 50);*/
            function closeSocket(){             
                webSocket.close(1000, "cerrado correctamente");   
                console.log('Conexión Cerrada');
            }
            
            //Se usa para mostrar los mensajes en el navegador
           // function writeResponse(text){
             //   messages.innerHTML += "<br/>" + text;
           // }
            
         function verValor() {                                                          //Declara la función verValor() Cuando se ejecuta:
         var valor = event.data;                                                      //Asigna a la variable local valor el msg.recibido
         console.log(event.data);
         document.getElementById('porcentaje').innerHTML=valor.toString() + "%";                              //Crea el nodo DOM para el elemento c (canvas)
         console.log(document.getElementById("contador").innerHTML);
         console.log(valor);
         var cont=parseInt(document.getElementById("contador").innerHTML); 
         if(valor=='50.00')
         {
            cont=cont+1;
            document.getElementById("contador").value=cont;
        }
               
         }
         
         
         
        

