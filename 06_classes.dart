void main() {
  
  final Hero wolverine = Hero('Logan', 'Regeneración');
  
  print(wolverine);
  print(wolverine.name);
  print(wolverine.power);
  print(wolverine.toString()); // OVERRIDE
  
  final Hero2 wolverine2 = Hero2(name: 'Logan', power: 'Regeneración');
  
  print(wolverine2);
  print(wolverine2.name);
  print(wolverine2.power);
  print(wolverine2.toString()); // sin override
}

class Hero {
  
  // atributos de la clase
  String name;
  String power;
  
  // constructor que se llama al crear un objeto de esta clase
  // Forma 1 (menos comun)
//   Hero( String pName, String pPower) : name = pName, power = pPower;
  
  // Forma 2 (la mas comun)
  Hero(this.name, this.power); // Los valores son obligatorios
  
  // OVERRIDE DE FUNCIONES 
  @override String toString(){
    return 'Estoy sobrescribiendo el metodo toString(), $name - $power';
  }
}

class Hero2 {
  
  // atributos de la clase
  String name;
  String power;
  
  // PARAMETROS CON NOMBRE (las llaves {} los convierten en opcionales) y 'required' que es obligatorio que me proporcione ese parametro
  Hero2({
    required this.name,
//     required this.power
    this.power = 'Sin poder' // valor por defecto
  });
}
