function crearMes(mes, ano) {
    // Obtener el div donde se mostrará el calendario
    var calendarioDiv = document.getElementById("calendario");

    // Crear una tabla para el calendario
    var tablaCalendario = document.createElement("table");

    // Crear el encabezado de la tabla (días de la semana)
    var filaEncabezado = tablaCalendario.insertRow();
    var diasSemana = ["L", "M", "X", "J", "V", "S", "D"];
    for (var i = 0; i < 7; i++) {
        var celda = filaEncabezado.insertCell();
        celda.textContent = diasSemana[i];
    }

    // Obtener el primer día del mes y el último día del mes
    var primerDiaMes = new Date(ano, mes, 1);
    var ultimoDiaMes = new Date(ano, mes + 1, 0);

    // Ajustar el primer día para que sea lunes
    primerDiaMes.setDate(1 - (primerDiaMes.getDay() + 6) % 7);

    // Obtener el día actual del mes
    var fechaActual = new Date();
    var diaActual = fechaActual.getDate();

    // Llenar el calendario con los días del mes
    var dia = 1;
    while (primerDiaMes.getMonth() <= mes || dia <= ultimoDiaMes.getDate()) {
        var fila = tablaCalendario.insertRow();
        for (var j = 0; j < 7; j++) {
            var celda = fila.insertCell();
            if (primerDiaMes.getMonth() === mes) {
                celda.textContent = dia;
                if (dia === diaActual) {
                    // Añadir clase CSS para el día actual
                    celda.classList.add("hoy");
                }
                dia++;
            }
            primerDiaMes.setDate(primerDiaMes.getDate() + 1);
            celda.style.padding = "10px";
        }
    }

    // Agregar la tabla al div del calendario
    calendarioDiv.appendChild(tablaCalendario);
}

function inicializarVariables() {
    var fechaActual = new Date();
    var annoActual = fechaActual.getFullYear();
    var mesActual = fechaActual.getMonth();
    var diaSemana = fechaActual.getDay();
    var semana = ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"];
    var diaMes = fechaActual.getDate();
    var meses = ["Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"];

    subtitulo = document.getElementById("subtitulo");
    fechasubtitulo = document.getElementById("fecha");
    annoFooter = document.getElementById("annoFooter");

    fechasubtitulo.textContent = semana[diaSemana] + ", " + diaMes + " de " + meses[mesActual] + " de " + annoActual;
    annoFooter.textContent = annoActual;
    crearMes(mesActual, annoActual);
}

function setListeners() {
    // Agrega aquí tus listeners
}

window.addEventListener("load", () => {
    inicializarVariables();
    setListeners();
});
