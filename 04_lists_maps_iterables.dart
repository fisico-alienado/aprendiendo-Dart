void main() {
  
  // ITERABLE : ()
  // LISTADO : []
  // SET: {}
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  print('Listado original $numbers');
  print('Length ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First (solo si se sabe que no es nulo): ${numbers.first}');
  print('Listado invertido: ${numbers.reversed}');
  
  // Iterable: un elemento que se puede iterar (que sabe cuantos elementos tienes y los tiene ordenados)
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('Iterable to list: ${reversedNumbers.toList()}');
  print('Iterable to set: ${reversedNumbers.toSet()}'); // los set no tienen valores repetidos, los elimina si los hay
  
  final numbersGreaterThan5 = numbers.where((num) {
    return num > 5;
  });
  
  print('>5 iterable: $numbersGreaterThan5');
  // eliminamos duplicados
  print('>5 set: ${numbersGreaterThan5.toSet()}');
  
}