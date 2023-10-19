void main() async {
  
  print('Inicio del programa');
  
  try{
    // El "await" le dice a Dart que, aunque la función sea asíncrona, espere al resultado para continuar
    final value =  await httpGet('https://google.com');
    print('Exito: $value');    
  } on Exception catch(err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('Tenemos un error: $err');
  } finally {
    print('Fin del try y catch');
  }

  
  print('Fin del programa');
}

// Async - es una forma corta de convertir la función tradicional en una función asíncrona.
Future<String> httpGet( String url ) async {
  await Future.delayed( const Duration(seconds : 1));
  
  throw Exception('No hay parametros en el URL');
  throw 'Error en la peticion';
  return 'Respuesta de la peticion http';
}