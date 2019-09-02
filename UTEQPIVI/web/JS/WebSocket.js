
            var websocket;
            function init() {
                   // Asegura que solo una conexión Websocket está abierta a la vez
                   if(websocket !== undefined && websocket.readyState !== WebSocket.CLOSED){
                       console.log("Conexión con Websocket ya establecida");
                       return;
                   }
                    websocket = new WebSocket('wss://192.168.1.123');
                    websocket.onopen = function (event) {
                        websocketOpen(event)
                    };
                    websocket.onmessage = function (event) {
                        websocketMessage(event)
                    };
                    websocket.onerror = function (event) {
                        websocketError(event)
                    };                    
                    websocket.onclose = function (event) {
                        websocketClose(event)
                    };
            }          
            
            function websocketOpen(event) {
                    console.log("Conexión establecida");
                    sendMessage();
                
            }            
           /* se invoca cada vez que el navegador recibe un mensaje WebSocket desde nuestro servidor WebSocket*/
            function websocketMessage(event) {
                document.getElementById('porcentaje').innerHTML=event.data.toString() + "%";    
                var valor=event.data.toString();
                var cont=parseInt(document.getElementById("contador").value); 
                if(valor=="50.00")
                {
                   cont=cont+1;
                   document.getElementById("contador").value=cont;
                   document.getElementById("cont").innerHTML=cont;
                }
                console.log("Cliente (recibe): ", event.data);
             }    
            function websocketClose(event){
                console.log("Close");
            }
            function websocketError(event) {
                console.log("Error: ", event.data);
            }  
            
            function sendMessage() {
                websocket.send("1");
            }
            
            function closeConnection() {
                websocket.close();
            }
            
           $("#btnmodal").click(function () {
            $('.modal-title').text("Exportar");
            $("#btnFooter").prop('value', 'Exportar');
            $('#btnFooter').unbind('click');

            $('.modal-body').css('height', '200px');
            $("#myModal").modal({backdrop: 'static', keyboard: false, show: true});
            });