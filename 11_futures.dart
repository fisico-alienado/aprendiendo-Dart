void main() {
  
  print('Inicio del programa');
  
  // Trabajo ASINCRONO
  // Si el Future es exitoso, se ejecuta el THEN y si falla, el CATCH es disparado.
  httpGet('https://google.com')
    .then( 
      (value) {
        print(value); // value es el valor producto de mi peticion, es decir, el Future<String> que devuelve httpGet()
      })
    .catchError( // controlar los errores
      (err) {
        print('Error $err');
      });
  
  print('Fin del programa');
}

Future<String> httpGet( String url ){
  return Future.delayed( const Duration(seconds : 1), () {
    // Comentar/descomentar uno u otro para ver su funcionamiento
    // throw 'Error en la peticion';
    return 'Respuesta de la peticion http'; 
  });
}