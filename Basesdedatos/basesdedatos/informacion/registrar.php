<?php
include '../cone.php';
$actividades= $_POST["actividades"];
$llamados_aten= $_POST["llamados_aten"];
$horario= $_POST["horario"];
$estado_aca= $_POST["estado_aca"];


$insertar=  "INSERT INTO informacion(actividades,llamados_aten, horario,estado_aca) VALUES ('$actividades', '$llamados_aten' ,'$horario' ,'$estado_aca')"; 



//$verificar_correo= mysqli_query($conexion, "SELECT * FROM  prueba WHERE correo = '$correo' ");
//if (mysqli_num_rows($verificar_correo)> 0) {
	//echo '<script>
	//alert("el correo ya esta registrado")
	//</script> 
	//';
	//exit;
//}

//$verificar_usuario= mysqli_query($conexion, "SELECT * FROM  prueba WHERE usuario = '$usuario' ");
//if (mysqli_num_rows($verificar_usuario)> 0) {
	//echo '<script>
	//alert("el usuario ya esta registrado")
	//</script> 
	//';
//	exit;
//}


$resultado= mysqli_query($conexion, $insertar); 
if (!$resultado) {
	echo "error al registrarse";
}else{
	echo '<script>
	alert("el usuario ya esta registrado")
	</script>'; 
	header("location:../inicio.php");	
	exit;
}
	//echo "Usuario registrado exitosamente"; 




mysqli_close($conexion);