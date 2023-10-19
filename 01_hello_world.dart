void main() {
//   var myName = 'Rubén';
  String myName = 'Rubén';
  
  final varQueNoSePuedeCambiar = 'Valor incambiable';
  
  late final varQueNoSePuedeCambiarAlAsignarse;
  varQueNoSePuedeCambiarAlAsignarse = 'Le he cambiado el valor antes de usarla y ya no se puede una vez la use';
  
  print('Hola $myName'); // Esto es una interporlacion de strings, lo hacemos con $
  // Veamos la diferencia entre los siguiente:
  print('Hola $myName.toUpperCase()');
  print('Hola ${myName.toUpperCase()}');
  
  print(varQueNoSePuedeCambiar);
  print(varQueNoSePuedeCambiarAlAsignarse);
  
  print('Hola ${1+1}');
}