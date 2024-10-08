abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

mixin Volador {
  void volar() => print('Estoy volando');
  void planear(int distanciaMaxima) => print('Este animal puede planear hasta: ${distanciaMaxima}');
  void ascender(double alturaMaxima) => print('Este animal puede ascender hasta una altura de ${alturaMaxima} mts. sobre el nivel del mar');
  void descender(String velocidadMaxima)=> print('Este animal descendera una velocidad de hasta: ${velocidadMaxima}');
}

mixin Caminante{
  void caminar() => print('estoy caminando!');
  void correr(double correrMaximo) => print('Este animal puede correr hasta: ${correrMaximo} km/h');
  void trotar(bool trotarMaximo) => print('Este animal puede trotar hasta: ${trotarMaximo}');
  void saltar(bool saltarMaximo) => print('Este animal puede trotar hasta: ${saltarMaximo}');
}

mixin Nadador{
  void nadar() => print('estoy nadando!');
  void sumergir(double sumergidoMaximo) => print('Este animal puede trotar hasta: ${sumergidoMaximo}');
  void respirar(bool respiroMaximo) => print('Este animal puede trotar hasta: ${respiroMaximo}');
}

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main(){
  final flipper = Delfin();
  print("Instanciando la clase de Delfín, y accediendo a sus funciones.");
  flipper.nadar();

  print("-------------------------------------------------------------");
  print("Instanciando la clase de Murcielago, y accediendo a sus funciones.");
  final chupacabras = Murcielago();
  chupacabras.caminar();
  chupacabras.volar();

  print("-------------------------------------------------------------");
  print("Instanciando la clase de Pato, y accediendo a sus funciones.");
  final pekines = Pato();
  pekines.caminar();
  pekines.planear(100);
  pekines.ascender(30);
  pekines.descender("5 km/h");
  pekines.nadar();

  print("-------------------------------------------------------------");

final PalomaBlanca = Paloma();
  print("Instanciando la clase de Paloma, y accediendo a sus funciones.");
  PalomaBlanca.caminar();
  PalomaBlanca.volar();
  PalomaBlanca.planear(100);
  PalomaBlanca.ascender(30);
  PalomaBlanca.trotar(true);
  PalomaBlanca.saltar(true);
  PalomaBlanca.correr(15);
  PalomaBlanca.descender("5 km/h");

final GatoEsfinge = Gato();
  print("Instanciando la clase de Gato, y accediendo a sus funciones.");
  GatoEsfinge.caminar();
  GatoEsfinge.correr(10);
  GatoEsfinge.saltar(true);
  GatoEsfinge.trotar(true);
}