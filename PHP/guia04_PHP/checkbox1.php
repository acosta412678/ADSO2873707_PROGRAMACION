<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulario 2</title>
    <link rel="stylesheet" href="css/checkbox1.css">
</head>
<body>
    <div class="form-container">
        <h2>Operar Número</h2>
        <form action="checkbox1process.php" method="post">
            <div class="form-group">
                <label for="txtNumero1">Número 1</label>
                <input type="text" name="txtNumero1" id="txtNumero1">
            </div>


            <div class="form-group">
                <label for="txtNumero1">Número 2</label>
                <input type="text" name="txtNumero2" id="txtNumero2">
            </div>

            <div class=form-group>
                <fieldset>
                    <legend>Seleccionar opreación</legend>
                    <label>
                        <input type="checkbox" name="operacion1" value="sumar">Sumar
                    </label>
 
                    <label>
                        <input type="checkbox" name="operacion2" value="restar">Restar
                    </label>
 
                    <label>
                        <input type="checkbox" name="operacion3" value="multiplicar">Multiplicar
                    </label>
 
                    <label>
                        <input type="checkbox" name="operacion4" value="dividir">Dividir
                    </label>

                </fieldset>
            </div>
            <div class="from-group">
                <button type="submit">Enviar</button>
            </div>
        </form>
        te
       
</body>

</html>