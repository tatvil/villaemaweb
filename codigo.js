function inicializarVariables() {
    var fechaActual = new Date();
    var annoActual = fechaActual.getFullYear();
    var mesActual = fechaActual.getMonth();
    var diaSemana = fechaActual.getDay();
    var diaMes = fechaActual.getDate();
    var semana = ["Domingo", "Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado"];
    var meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];

    // Actualizar subtítulo con la fecha
    document.getElementById("fecha").textContent = semana[diaSemana] + ", " + diaMes + " de " + meses[mesActual] + " de " + annoActual;

    // Actualizar el menú
    document.getElementById("menu1").innerHTML = "<a href='index.html'>Inicio</a>";
    document.getElementById("menu2").innerHTML = "<a href='sobre-mi.html'>Sobre mí</a>";
    document.getElementById("menu3").innerHTML = "<a href='proyectos.html'>Proyectos</a>";
    document.getElementById("menu4").innerHTML = "<a href='habilidades.html'>Habilidades</a>";
    document.getElementById("menu5").innerHTML = "<a href='contacto.html'>Contacto</a>";

    // Corregido para usar innerHTML
    document.getElementById("copyright").innerHTML = "&copy; " + annoActual + " - Tatiana Villa Ema";
}

// Ejecutar las funciones cuando la página esté completamente cargada
window.addEventListener("load", () => {
    inicializarVariables();
});

