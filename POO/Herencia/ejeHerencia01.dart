import 'Evento.dart';

void main(List<String> args) {
  Evento myEvent = Evento("Exposicion ADSO", 15, DateTime(2024, 8, 22, 7));
  print(myEvent.getNombre());
  myEvent.setNombre("Exposiciones POO - ADSO");
  print(myEvent.getNombre());
  myEvent.setCantidadPersonas(13);
  print(myEvent.getCantidadPersonas());
  print(myEvent.cantPersonas); // Se accede al atributo publico
}
