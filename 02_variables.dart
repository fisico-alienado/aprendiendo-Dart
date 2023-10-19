void main() {
  
  // si la variable no la vamos a reasignar y va a tener este valor, es mas eficiente dejarla con final.
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  
  final abilities = ['impostor']; // listado
  // OTRAS FORMAS VALIDAS
  // final abilities = <String>['impostor']
  // final List<String> abilities = ['impostor']

  final sprites = ['ditto/front.png', 'ditto/back.png']; // listado
  
  // dynamic acepta cualquier tipo de dato, incluido los nulos (null), por lo que tenemos que TENER CUIDADO
  // pues vulnera los principios de NULL-SAFETY
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5]; // LISTA
  errorMessage = {1,2,3,4,5}; // SET
  errorMessage = () => true;
  errorMessage = null;
  
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites
    $errorMessage
  """);
  
}