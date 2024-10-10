<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/procesar02.css">
</head>
<body>
    <?php
        $nombre = isset($_POST['txtName'])? $_POST['txtName'] : null;
        $email = isset($_POST['txtEmail'])? $_POST['txtEmail'] : "";
        $telefono = $_POST['txtTelefono']?? null; 
        $fechaNacimiento = $_POST ['txtFechaNac'] ?? "";
    ?>
    <div class = "info-container">
        <label for="">Nombre: <?php echo $nombre;?></label>
        <label for="">Email: <?php echo $email;?></label>
        <label for="">Teléfono: <?php echo $telefono;?></label>
        <label for="">Fecha fechaNacimiento: <?php echo $fechaNacimiento;?></label>
    </div>
</body>
</html>