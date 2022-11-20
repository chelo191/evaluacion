<!DOCTYPE html>
<html>
<head>
	<title>Registrar usuario</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
    
    <form method="post" action="registrar.php">
    	<h1>¡Suscribete!</h1>
    	<input type="text" name="name" placeholder="Nombre completo">
    	<input type="email" name="email" placeholder="Email">
		<input type="rut" name="rut" placeholder="Rut">
		<input type="number" name="edad" placeholder="Edad">

		<input type="submit" name="register">	
		
    	
		

  



    </form>
        <?php 
        include("registrar.php");
		
        ?>
</body>
</html>