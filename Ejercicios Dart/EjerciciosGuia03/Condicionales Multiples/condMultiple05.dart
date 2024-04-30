import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Multiples - EJE_05
El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave.
Clave Zona Precio
12 América del Norte 200
15 América Central 220
18 América del Sur 450
19 Europa 350
23 Asia 600
25 África 600
29 Oceanía 500
Construya la solución para calcular e imprimir el costo de una llamada dada la clave.
*/
// Definicón de variables
  int clave;
  double precioXminuto, duracionLlamada, costoLlamada;
  String? lugar;
  
  // Entrada
  print("Ingrese la duración de la llamada");
  duracionLlamada = double.parse(stdin.readLineSync()!);
  print("Ingrese la clave");
  clave = int.parse(stdin.readLineSync()!);

  // Proceso 
  precioXminuto = 0;
  switch (clave) {
    case 12:
   lugar = "América del Norte";
   precioXminuto = 200;
      break;
    case 15:
   lugar = "América Central";
   precioXminuto = 220;
      break;
    case 18:
   lugar = "América del Sur";
   precioXminuto = 450;
      break;
    case 19:
   lugar = "Europa";
   precioXminuto = 350;
      break;
    case 23:
   lugar = "Asia";
   precioXminuto = 600;
      break;
    case 25:
   lugar = "África";
   precioXminuto = 600;
      break;
    case 29:
   lugar = "Oceanía";
   precioXminuto = 500;
      break;
    default:
      print("No se pudo calcular el valor de la llamada");
}
 costoLlamada = duracionLlamada * precioXminuto;

 //Salida
  print("La zona es $lugar y su precio es $costoLlamada");
}