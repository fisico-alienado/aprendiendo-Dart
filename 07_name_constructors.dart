void main() {
  
  final ironman = Hero(
                      isAlive: false,
                      power: 'Money',
                      name: 'Tony Stark'
                     );
  
  print(ironman); // equivalente a print(ironman.toString())
  
  // por ejemplo un OBJETO JSON QUE VIENE DE UNA PETICION WEB HTTP, con el que queremos crearnos
  // una instancia/objeto de la clase Hero
  final Map<String, dynamic> rawJson = {
    'name' : 'Tony Stark',
    'power' : 'Money',
    'isAlive' : true
  };
  
  // Forma COÑAZO
  final ironman2 = Hero(
                      isAlive: rawJson['isAlive'] ?? false, // NULL SAFETY --> SI rawJson['isAlive'] TIENE UN VALOR, UTILIZALO Y SINO LO TIENE, ASIGNALE EL false
                      power: rawJson['power'],
                      name: rawJson['name']
                     );
  print(ironman2);
  
  // Forma BUENA con constructor alternativo
  final ironman3 = Hero.fromJson(rawJson);
  print(ironman3);
  
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  // OTRO CONSTRUCTOR ALTERNATIVO --> Hero(lo que recibo){ como asigno lo recibido a los atributos de la clase}
  Hero.fromJson(Map<String,dynamic> json) 
    : isAlive = json['isAlive'] ?? 'No alive found', // NULL SAFETY --> SI json['isAlive'] TIENE UN VALOR, UTILIZALO Y SINO LO TIENE, ASIGNALE EL false
      power = json['power'] ?? 'Ninguno',
      name = json['name'] ?? 'Juanito';

  
  @override String toString() {
  return '$name, $power, isAlive: ${isAlive ? 'YES!' : 'Nope'}';
  }
}
