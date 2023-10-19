void main() {
  
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['impostor'],
    'sprites': { // Es un mapa y no un set porque tenemos key-values pairs / si solo hubiera valores con comas seria un SET
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  final pokemons = {
    1: 'abc',
    2: 'xyz',
    3: 'fasd',
    150: 'asdf'
  };
  
  print(pokemon);
  print(pokemons);
  
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites']}');
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
  print('LLave 1: ${pokemons[150]}');
}