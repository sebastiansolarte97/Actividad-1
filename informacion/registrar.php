<?php
include '../cone.php';
$actividades= $_POST["actividades"];
$llamados_aten= $_POST["llamados_aten"];
$horario= $_POST["horario"];
$estado_aca= $_POST["estado_aca"];


$insertar=  "INSERT INTO informacion(actividades,llamados_aten, horario,estado_aca) VALUES ('$actividades', '$llamados_aten' ,'$horario' ,'$estado_aca')"; 


$resultado= mysqli_query($conexion, $insertar); 
if (!$resultado) {
	echo "error al registrarse";
}else{
	echo '<script>
	alert("el usuario ya esta registrado")
	</script>'; 
	header("location:../index.html");	
	exit;
}


mysqli_close($conexion);