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
        <?php
        $num1 = $_POST['txtNumero1'] ?? 0; // Operador nulo
        // Operador ternario
        $num2 = isset($_POST['txtNumero2']) ? $_POST['txtNumero2'] : 0;
        echo <<<HRD
            <h4>Número 1: $num1</h4>
            <h4>Número 2: $num2</h4>
        HRD;
        $resultado = 0;
        if (isset($_POST['operacion1'])) { //SUMA
            $resultado = $num1 + $num2;
            print("<label>La suma es: $resultado</label>");
        }
        if (isset($_POST['operacion2'])) { //RESTA
            $resultado = $num1 - $num2;
            print("<label>La resta es: $resultado</label>");
        }
        if (isset($_POST['operacion3'])) { //MULTIPLICACIÓN
            $resultado = $num1 * $num2;
            print("<label>La multiplicación es: $resultado</label>");
        }
        if (isset($_POST['operacion4'])) { //DIVISIÓN
            try {
                $resultado = $num1 / $num2;
                print("<label>La división es: $resultado</label>");
            } catch (Error $er) {
                $html =  '<label class="mensajes"><section class="titulos">Errorcito:</section> '.$er->getMessage().'</label>';
                $html .=  '<label class="mensajes"><section class="titulos">Línea:</section> '.$er->getLine().'</label>';
                $html .=  '<label class="mensajes"><section class="titulos">Archivito:</section> '.$er->getFile().'</label>';
                echo <<<OUT
                    <div class="error-container">
                        <h4 class="titulo-principal">Error al realizar la operación</h4>
                        $html
                    </div>
                OUT;
               // echo "<pre>";
               // print_r($er); // Imprime los elementos de un array u objeto
               // echo "</pre>";
            }

          
        }
        ?>
    </div>
</body>