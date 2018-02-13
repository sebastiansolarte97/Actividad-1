<?php
include '../cone.php';
$identificacion= $_POST["identificacion"];
$nombre= $_POST["nombre_1"];
$nombre2= $_POST["nombre_2"];
$apellidos= $_POST["apellido_1"];
$apellidos2= $_POST["apellido_2"];
$num_cel= $_POST["num_cel"];


$insertar=  "INSERT INTO padresflia(identificacion,nombre_1,nombre_2, apellido_1,apellido_2, num_cel) VALUES ( '$identificacion','$nombre', '$nombre2' ,'$apellidos' ,'$apellidos2', '$num_cel')"; 



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