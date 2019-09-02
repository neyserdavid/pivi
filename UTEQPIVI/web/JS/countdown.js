
const getRemainTime = deadline => {
    let now = new Date(),
        remainTime = (new Date(deadline) - now + 1000) / 1000,
        remainSeconds =('0' +Math.floor(remainTime % 60)).slice(-2),
        remainMinutes =('0' +Math.floor(remainTime/60 % 60)).slice(-2)
      
        return{
            remainTime,
            remainSeconds,
            remainMinutes        
        }
};
function countdown(deadLine, elem, fnalMessage)
{
  const el = document.getElementById(elem);
  const timerUpdate = setInterval( ()=>
  {
      let t = getRemainTime(deadLine);
      el.innerHTML = `${t.remainMinutes}:${t.remainSeconds}`;
      if(t.remainTime <= 1 )
      {
          clearInterval(timerUpdate);
          el.innerHTML = fnalMessage;
      }
      // document.getElementById('porcentaje').innerHTML=`${t.remainMinutes}:${t.remainSeconds}`;                           //Crea el nodo DOM para el elemento c (canvas)
         
  },1000)
};

const contador = minutos  => {
    var fecha = new Date();
    var sumarsesion = minutos;
    var minutes = fecha.getMinutes();
    var year=fecha.getFullYear();
    var mesnum=fecha.getMonth();
    var dia=fecha.getDate();
    var hora=fecha.getHours();
    var meses = new Array ("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
    
    fecha.setMinutes(minutes + sumarsesion);
    
    var ret=meses[mesnum] +' '+('0'+dia).slice(-2)+' '+ year +' '+('0'+hora).slice(-2)+':'+('0'+fecha.getMinutes()).slice(-2)+':'+('0'+fecha.getSeconds()).slice(-2)+' GMT-0500';
    console.log(ret);
    return ret.toString();
};
//countdown(contador(5),'clock','Feliz septiembre');
//console.log(getRemainTime('Aug 13 2019 08:38:27 GMT-0500'));

console.log(contador(5));