<?php

$user = "root";
$pass = "";
$host = "localhost";

$connection = mysqli_connect($host, $user, $pass);

$Nombre = $_POST["Nombre"] ;
$Email = $_POST["Email"] ;
$Direccion = $_POST["Direccion"] ;
$Ciudad = $_POST["Ciudad"] ;
$Estado = $_POST["Estado"] ;
$CP = $_POST["CP"] ;
$Titular = $_POST["Titular"] ;
$Tarjeta = $_POST["Tarjeta"] ;
$M_Exp = $_POST["M_Exp"] ;
$A_Exp = $_POST["A_Exp"] ;
$CVV = $_POST["CVV"] ;

        $datab = "tarjetas";

        $db = mysqli_select_db($connection,$datab);

        if (!$db)
        {
        echo "No se ha podido encontrar la Tabla";
        }
        else
        {
        echo "<h3>Tabla seleccionada:</h3>" ;
        }

        $instruccion_SQL = "INSERT INTO usuarios (Nombre, Email, Direccion, Ciudad, Estado, CP, Titular, Tarjeta, M_Exp, A_Exp, CVV)
                             VALUES ('$Nombre', '$Email', '$Direccion', '$Ciudad', '$Estado', '$CP', '$Titular', '$Tarjeta', '$M_Exp', '$A_Exp', '$CVV')";
                           
                            
        $resultado = mysqli_query($connection,$instruccion_SQL);

		if ($resultado){
			echo '
<script>
	alert("Tarjeta guardada correctamente!")
	window.location = "Catalogo.html"
	</script>
';
		}


mysqli_close( $connection );
	
?>
