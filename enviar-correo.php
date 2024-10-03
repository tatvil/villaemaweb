<?php
// Recoger los datos del formulario
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$mensaje = $_POST['mensaje'];

// Dirección de destino (cambiar por tu correo)
$destinatario = "tatiana@villaema.es";

// Asunto del correo
$asunto = "Mensaje de contacto de $nombre";

// Cuerpo del mensaje
$cuerpo = "Nombre: $nombre\n";
$cuerpo .= "Correo electrónico: $email\n";
$cuerpo .= "Mensaje: $mensaje\n";

// Cabeceras del correo
$headers = "From: $email\r\n";
$headers .= "Reply-To: $email\r\n";
$headers .= "X-Mailer: PHP/" . phpversion();

// Enviar el correo
if (mail($destinatario, $asunto, $cuerpo, $headers)) {
    echo "¡Mensaje enviado con éxito!";
} else {
    echo "Hubo un problema al enviar el mensaje.";
}
?>
