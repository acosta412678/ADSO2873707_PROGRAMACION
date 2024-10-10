<!DOCTYPE html>
<html lang="en">
 
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario 02</title>
    <link rel="stylesheet" href="css/radio.css">
</head>
 
<body>
    <div class="form-container">
        <h2>Sumar Números</h2>
        <form action="procesar04.php" method="post">
            <div class="form-group">
                <label for="txtNumero1">Número 1</label>
                <input type="text" name="txtNumero1" id="txtNumero1">
            </div>
 
            <div class="form-group">
                <label for="txtNumero2">Número 2</label>
                <input type="text" name="txtNumero2" id="txtNumero2">
            </div>
 
            <div class="form-group">
                <label for="radioOperacion">Sumar</label>
                <input type="radio" name="radioOperacion" value="sumar">
            </div>
 
            <div class="form-group">
                <label for="radioOperacion">Restar</label>
                <input type="radio" name="radioOperacion" value="restar">
            </div>
 
            <div class="from-group">
                <button type = "submit">Realizar Operación</button>
            </div>
 
 
        </form>