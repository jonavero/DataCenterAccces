// $("document").ready(function(){

function responside(){
    let padre = document.getElementsByClassName("cuerpo-principal")[0];
    let asideWidith = 300;
    let windowWidth = window.innerWidth ;
    let pageWidth = document.documentElement.clientWidth;
    let resta = pageWidth - asideWidith ;
    padre.style.gridTemplateColumns = `${asideWidith}px ${resta}px`;

    if(windowWidth <= 760 ){
        let l = 80;
        let resta = pageWidth - l;
        padre.style.gridTemplateColumns = `${l}px ${resta}px`;
    }
}
responside();
window.addEventListener('resize', responside, false);


// })







;
