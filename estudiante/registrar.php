<?php
include '../cone.php';
$identificacion= $_POST["identificacion"];
$nombre= $_POST["nombre_1"];
$nombre2= $_POST["nombre_2"];
$apellidos= $_POST["apellido_1"];
$apellidos2= $_POST["apellido_2"];


$insertar=  "INSERT INTO estudiante(identificacion,nombre_1,nombre_2, apellido_1,apellido_2) VALUES ('$identificacion' , '$nombre', '$nombre2' ,'$apellidos' ,'$apellidos2')"; 






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