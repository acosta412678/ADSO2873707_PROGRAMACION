<?php
// FOR
for ($i=0; $i < 10; $i++) { 
    echo "Número $i<br>";
}
?>
<hr>
<?php
$limite = rand(10,20);
for ($i=0; $i < $limite; $i++) { 
    echo "Núm: ".($i+1)."<br>";
}