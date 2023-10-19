void main() {
  
  final windPlant = WindPlant(initialEnergy: 100);
  print(windPlant);
  print('Energia restante tras cargar el telefono: ${chargeMethod(windPlant)}');
  
//   final windPlant2 = WindPlant(initialEnergy: 9);
//   print(windPlant2);
//   print('Energia restante tras cargar el telefono: ${chargeMethod(windPlant2)}');
  
  final nuclearPlant = NuclearPlant(energiaRestante: 1000);
  print(nuclearPlant);
  print('Energia restante tras cargar el telefono: ${chargeMethod(nuclearPlant)}');

}

enum PlantType { nuclear, wind, water}

// Las clases abstractas son los moldes comunes de los que derivaran otras clases. Son superclases (como en C++)
abstract class EnergyPlant {
  
  double energiaRestante;
  final PlantType tipo; // nuclear, eolica, agua (si no ponemos 'final' sale error porque Dart infiere que se puede cambiar en algun momento y no es verdad, pues una vez establecido este valor no cambiara)
  
  EnergyPlant({required this.energiaRestante, required this.tipo});
  
  // Metodo definido pero no implementado, puesto que sera particular a cada clase DERIVADA de esta
  void consumeEnergy(double amount);
}

// EXTENDS - HERENCIA: forma de indicar que una clase deriva de otra, y por tanto hereda 
class WindPlant extends EnergyPlant {
  
  WindPlant({required double initialEnergy}) : super(energiaRestante: initialEnergy, tipo: PlantType.wind);
  
  @override void consumeEnergy(double amount){
    energiaRestante -= amount; 
  }
}

// IMPLEMENTS - Util cuando NO QUEREMOS HEREDAR todo DE LA CLASE PADRE. Por ejemplo, a lo mejor solo queremos implementar uno de sus metodos
class NuclearPlant implements EnergyPlant {
  @override double energiaRestante;
  @override final PlantType tipo = PlantType.nuclear; // nuclear, eolica, agua
  
  NuclearPlant({required this.energiaRestante});
  
  @override void consumeEnergy(double amount) {
    energiaRestante -= (amount * 0.5);
  }    
}

// ESTO ES UTIL PARA PODER APLICAR EL PRINCIPIO DE SUSTITUCION Y QUE EN UNA FUNCION COMO LA SIGUIENTE VALGA CUALQUIER CLASE DERIVADA DE EnergyPlat
double chargeMethod(EnergyPlant plant){
  if(plant.energiaRestante < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energiaRestante - 10;
}