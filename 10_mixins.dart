abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}


abstract mixin class Volador {
  void volar() => print('Estoy volando');
}

abstract mixin class Caminante {
  void caminar() => print('Estoy caminado');
}

abstract mixin class Nadador {
  void nadar() => print('Estoy nadando');
}

// MIXINS - Se aplican con la palabra reservada "with" y sirven, en este caso, para indicar una serie de 
// caracteristicas compartidas si se es nadador, caminante o volador, independientemente del tipo de animal
// Permiten ESPECIALIZAR las clases o AÑADIR FUNCIONALIDADES EXTRA SIN EXTENDER MAS LAS CLASES
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Caminante, Volador, Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Nadador, Volador{}

void main() {
  
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final pato = Pato();
  pato.caminar();
  pato.volar();
  pato.nadar();
}