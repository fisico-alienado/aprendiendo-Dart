void main() async {
  
  print('Inicio del programa');
  
  try{
    // El "await" le dice a Dart que, aunque la función sea asíncrona, espere al resultado para continuar
    final value =  await httpGet('https://google.com');
    print(value);    
  } catch (err) {
    print('Tenemos un error: $err');
  }
  
  print('Fin del programa');
}

// Async - es una forma corta de convertir la función tradicional en una función asíncrona, que indica que se devuelve un dato tipo Future
Future<String> httpGet( String url ) async {

  // Comentar/descomentar uno u otro para ver su funcionamiento
  await Future.delayed( const Duration(seconds : 1));
//   throw 'Error en la peticion';
  return 'Respuesta de la peticion http';
}