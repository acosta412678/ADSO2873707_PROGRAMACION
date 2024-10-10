<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php 
        $numero1 = isset($_POST['txtNumero1'])?$_POST['txtNumero1']:null;
        $numero2 = isset($_POST['txtNumero2'])?$_POST['txtNumero2']:null;
        $operacion = $_POST["radioOperacion"] ?? null;
        $textoOperacion = ($_POST["radioOperacion"]=="sumar")?"suma":"resta";
        if($_POST["radioOperacion"] == "sumar") {
            $resultado = $numero1 + $numero2;
        } else {
            $resultado = $numero1 - $numero2;
        }
    ?>

    <div class="info-container">
        <h2>Resultado</h2>
        <p>
            El resultado de <?php echo $textoOperacion;?> es:
            <?php echo $resultado;?>
        </p>
        <a href="radio.php">Regresar</a>
    </div>
</body>
</html>