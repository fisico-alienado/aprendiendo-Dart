void main() {
  
  print(greetEveryone());
  print(lambdaGreet());
  print('Suma: ${addTwoNumbers(10,20)}');
  print('Suma: ${addTwoNumbersLambda(10,20)}');
  print('Suma: ${addTwoNumbersOptional(10)}');
  print('Suma: ${addTwoNumbersOptionalMejor(10)}');
  
  print(greetPerson( name: 'Ruben' ));
  print(greetPerson( name: 'Ruben', message: 'Adios ' ));
}

// Si no se especifica que tipo de dato devuelve la funcion, Dart entiende que es de tipo DYNAMIC

String greetEveryone() {
  return 'Hello everyone!';
}

// Lambda function o funciones flecha

String lambdaGreet() => 'Hello everyone!';

int addTwoNumbers(int a, int b) { // funcion con parametros POSICIONALES OBLIGATORIOS
  return a + b;
}

int addTwoNumbersLambda(int a, int b) => a + b;

// PODEMOS PONER QUE PARÁMETROS DE FUNCIÓN SEAN OPCIONALES con []
int addTwoNumbersOptional(int a, [int? b]) {
  
  b = b ?? 0; // SI b TIENE UN VALOR, UTILIZALO Y SINO LO TIENE, ASIGNALE EL 0
  
  // Forma corta
  // b ??= 0;
  
  return a + b;
}

// MEJOR FORMA - ESTABLECER VALORES POR DEFECTO
int addTwoNumbersOptionalMejor(int a, [int b = 0]) {
  
  return a + b;
}

// PARAMETROS CON NOMBRE (las llaves {} los convierten en opcionales) y 'required' que es obligatorio que me proporcione ese parametro
String greetPerson({required String name, String message = 'Hola '}){
  
  return '$message $name';
}