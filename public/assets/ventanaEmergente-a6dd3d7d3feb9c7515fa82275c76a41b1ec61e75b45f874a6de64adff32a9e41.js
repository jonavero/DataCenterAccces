//ventana emergente
const btnEmergente = document.getElementById("accesoEmergente");
const btnIniciarSesion = document.getElementsByClassName("iniciarSesion")[0];
const contenedorLogin = document.getElementsByClassName("contenedor-login")[0]; 
const ventanaEmergente = document.getElementsByClassName("ventana-emergente ")[0];
 btnEmergente.addEventListener('click',() => {
    ventanaEmergente.classList.add("mostrar");
    ventanaEmergente.classList.remove("ocultar");
    contenedorLogin.style.display = "none";

})
btnIniciarSesion.addEventListener('click',() => {
    ventanaEmergente.classList.add("ocultar");
    ventanaEmergente.classList.remove("mostrar");
    contenedorLogin.style.display ='block';
    
})

var formularioEmergente = document.getElementById("formEmgente"),
    nombre = formularioEmergente.nombre,
    correo = formularioEmergente.correo,
    codigo = formularioEmergente.codigo,
    departamento = formularioEmergente.departamento,
    funcion = formularioEmergente.funcion,
    visitante = formularioEmergente.visitante,
    mensaje = formularioEmergente.mensaje;
const EXREGLITERAL = /^[a-z ñ]{0,}$/i,
      EXREGCORREO = /^([a-z0-9_\.-]+)@([a-z0-9\.]+)\.([a-z]{2,6})$/,
      EXREGCODIFO = /^[0-9]{0,}$/;
         
      
 

  function nombreValidacion(e){ 
    let error = document.getElementById("errorNombre");
    if(!EXREGLITERAL.test(nombre.value) || nombre.value == ""){
      nombre.focus();
      e.preventDefault();
      error.classList.add("invalido");
      error.innerHTML =`El campo  <b>${nombre.value}</b> no es valido `;
    }else{
      error.classList.remove("invalido");
      error.textContent ='';
    }
}  
function correoValidacion(e){
    let error = document.getElementById("errorCorreo"); 
    if(!EXREGCORREO.test(correo.value.trim()) || correo.value == ""){
        correo.focus();
        e.preventDefault();
        error.classList.add("invalido");
        error.innerHTML =`El campo <b>${correo.value}</b>  no es valido  `;
      }else{
        error.classList.remove("invalido");
        error.textContent ='';
      }
}

function codigoValidacion(e){ 
    let error = document.getElementById("errorCodigo");
    if(!EXREGCODIFO.test(codigo.value.trim()) || codigo.value == ""){
      codigo.focus();
      e.preventDefault();
      error.classList.add("invalido");
      error.innerHTML =`El campo <b>${codigo.value}</b> no es valido `;
    }else{
      error.classList.remove("invalido");
      error.textContent ='';
    }
} 

function departamentoValidacion(e){ 
  let error = document.getElementById("errorDepartamento");
  if(!EXREGLITERAL.test(departamento.value) || departamento.value == ""){
    departamento.focus();
    e.preventDefault();
    error.classList.add("invalido");
    error.innerHTML =`El campo <b>${departamento.value}</b> no es valido `;
  }else{
    error.classList.remove("invalido");
    error.textContent ='';
  }
} 

function funcionValidacion(e){ 
  let error = document.getElementById("errorFuncion");
  if(!EXREGLITERAL.test(funcion.value) || funcion.value == ""){
    funcion.focus();
    e.preventDefault();
    error.classList.add("invalido");
    error.innerHTML =`El campo <b>${funcion.value}</b> no es valida `;
  }else{
    error.classList.remove("invalido");
    error.textContent ='';
  }
}  

function visitaValidacion(e){ 
  let error = document.getElementById("errorVisita");
  if(!EXREGLITERAL.test(visitante.value) || visitante.value == ""){
    visitante.focus();
    e.preventDefault();
    error.classList.add("invalido");
    error.innerHTML =`El campo <b>${visitante.value}</b> no es valido `;
  }else{
    error.classList.remove("invalido");
    error.textContent ='';
  }
}  
function mensajeValidacion(e){ 
  let error = document.getElementById("errorMensaje");
  if(mensaje.value.trim() == "" || mensaje.value == null){
    mensaje.focus();
    e.preventDefault();
    error.classList.add("invalido");
    error.innerHTML =`El campo <b>${mensaje.value}</b> no es valido `;
  }else{
    error.classList.remove("invalido");
    error.textContent ='';
  }
}  


  
  

  function validacion(e){
    mensajeValidacion(e);
    visitaValidacion(e);
    funcionValidacion(e);
    departamentoValidacion(e);
    codigoValidacion(e);
    correoValidacion(e);
    nombreValidacion(e);
  }
  formularioEmergente.addEventListener("submit",validacion);

