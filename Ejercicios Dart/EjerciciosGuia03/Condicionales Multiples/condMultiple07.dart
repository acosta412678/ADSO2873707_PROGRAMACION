import 'dart:io';

void main() {
/*  LUIS MIGUEL ACOSTA  - Condicionales Multiples - EJE_07
El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el
país destino, y del número de minutos hablados.
En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una
clave. Construya la solución para calcular e imprimir el costo de una llamada dada la clave y la
duración de la llamada.
.
Clave Zona Precio Precio/minuto
(del 4 en adelante)
12 América del Norte 200 150
15 América Central 220 180
18 América del Sur 450 350
19 Europa 350 270
23 Asia 600 460
25 África 600 460
29 Oceanía 500 390
*/
  int clave;
  double precioXminuto,
      duracionLlamada,
      costo,
      costoFinal,
      minutosExtras,
      costoExtra;
  String? lugar;

  // Entrada
  print("Ingrese la duración de la llamada en minutos");
  duracionLlamada = double.parse(stdin.readLineSync()!);
  print("Ingrese la clave");
  clave = int.parse(stdin.readLineSync()!);

  // Proceso
  precioXminuto = 0;
  costo = duracionLlamada * precioXminuto;
  minutosExtras = duracionLlamada - 4;
  costoFinal = 0;
  switch (clave) {
    case 12:
      lugar = "América del Norte";
      precioXminuto = 200;
      costoExtra = 150;
      if (duracionLlamada > 4) {
        costoFinal = costo + (minutosExtras * costoExtra);
      }
      break;
    case 15:
      lugar = "América Central";
      precioXminuto = 220;
      costoExtra = 180;
      if (duracionLlamada > 4) {
        costoFinal = costo + (minutosExtras * costoExtra);
      }
      break;
    case 18:
      lugar = "América del Sur";
      precioXminuto = 450;
      costoExtra = 350;
      if (duracionLlamada > 4) {
        costoFinal = costo + (minutosExtras * costoExtra);
      }
      break;
    case 19:
      lugar = "Europa";
      precioXminuto = 350;
      costoExtra = 270;
      if (duracionLlamada > 4) {
        costoFinal = costo + (minutosExtras * costoExtra);
      }
      break;
    case 23:
      lugar = "Asia";
      precioXminuto = 600;
      costoExtra = 460;
      if (duracionLlamada > 4) {
        costoFinal = costo + (minutosExtras * costoExtra);
      }
      break;
       case 25:
      lugar = "África";
      precioXminuto = 600;
      costoExtra = 460;
      if (duracionLlamada > 4) {
        costoFinal = costo + (minutosExtras * costoExtra);
      }
      break;
       case 29:
      lugar = "Oceanía";
      precioXminuto = 500;
      costoExtra = 390;
      if (duracionLlamada > 4) {
        costoFinal = costo + (minutosExtras * costoExtra);
      }
      break;
    default:
      print("No se pudo calcular el valor de la llamada");
  }

  //Salida
  print("La zona es $lugar y su precio es $costoFinal");
}
