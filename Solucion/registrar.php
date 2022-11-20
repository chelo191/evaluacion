<?php 

include("con_db.php");
include("datos.xml");

if (isset($_POST['register'])) {
    if (strlen($_POST['name']) >= 1 && strlen($_POST['email']) >= 1 && strlen($_POST['rut']) >= 1 && strlen($_POST['edad']) >= 1 ) {
	    $name = trim($_POST['name']);
	    $email = trim($_POST['email']);
	    $fechareg = date("d/m/y");
		$rut = trim($_POST['rut']);
		$edad = trim($_POST['edad']);
		if (empty($edad)) {
			echo"<p class ='error'> Agrega tu edad</p>";
		}else{
			if (!is_numeric($edad)) {
			echo "<p class ='error'> La edad debe ser un numero</p>";	
			}
		}
		
	    $consulta = "INSERT INTO participantes(nombre, email, fecha_reg, rut, edad ) VALUES ('$name','$email','$fechareg','$rut', '$edad')";
	    $resultado = mysqli_query($conex,$consulta);
	    if ($resultado) {
	    	?> 
	    	<h3 class="ok">¡Gracias por registrarse!</h3>
           <?php
	    } else {
	    	?> 
	    	<h3 class="bad">¡Ups ha ocurrido un error!</h3>
           <?php
	    }
    }   else {
	    	?> 
	    	<h3 class="bad">¡Por favor complete los campos!</h3>
           <?php
    }
		

//Creamos objeto dom y lo vinculamos al archivo que deseamos escribir
$doc = new domDocument("1.0" , "utf-8");
$doc->formatOutup = true;
$doc->load ("datos.xml");
//Asignamos la instancia "raiz" - PARTICIPANTES
$raiz= $doc->getElementsByTagName('participantes')->item[0];
//Creamos una instancia "rama"- PARTICIPANTES
$rama= $doc-> createElement('participante');
//Creamos una instancia "hoja"- NOMBRE

$hoja= $doc-> createElement('nombre');
$hoja->appenChild($doc->createTextNode($nombre));
$rama->appenChild($hoja);

$hoja= $doc-> createElement('email');
$hoja->appenChild($doc->createTextNode($email));
$rama->appenChild($hoja);


$rama->appenChild($hoja);$hoja= $doc-> createElement('rut');
$hoja->appenChild($doc->createTextNode($rut));
$rama->appenChild($hoja);


$rama->appenChild($hoja);$hoja= $doc-> createElement('edad');
$hoja->appenChild($doc->createTextNode($edad));

$rama->appenChild($hoja);
$raiz->appenChild($rama);
$doc->appenChild($raiz);
$doc->save("datos.xml");

}


?>
