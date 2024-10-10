<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario 02</title>
    <link rel="stylesheet" href="css/formularios02.css">
</head>
<body>
    <div class = "form-container">
        <h2>Crear Usuario</h2>
        <form action="procesar02.php" method="post">
            <div class = "form-group">
                <label for="">Nombre</label>
                <input type="text" name="txtname" id="txt">
            </div>

            <div class = "form-group">
                <label for="txtEmail">Correo</label>
                <input type="email" name="txtEmail" id="txtEmail">
            </div>

            <div class = "form-group">
                <label for="">Telefono</label>
                <input type="tel" name="txtNumero" id="txtNumero">
            </div>

            <div class = "form-group">
                <label for="txt">Fecha de nacimiento</label>
                <input type="date" name="txtDate" id="txtDate">
            </div>
            
            <div class ="form-group">
                <button type = "submit"> Crear </button>
            </div>
        </form>
    </div>
    
</body>
</html>