void main() {
  
  final mySquare = Square(side : 10);
  print('Area: ${mySquare.calculateArea()}');
  print('Area: ${mySquare.area}');
  mySquare.side = -5; // No tenemos protegidas las propiedades de la clase Square y se puede acceder a ellas y modificarlas inpunemente. Eso en general no esta bien.
  print('Area: ${mySquare.calculateArea()}');
  print('Area: ${mySquare.area}');  
  
  // Esto daria error: final myProtectedSquare = SquareProtegido(side : -10);
  final myProtectedSquare = SquareProtegido(side : 10);
  print('Area: ${myProtectedSquare.calculateArea()}');
  print('Area: ${myProtectedSquare.area}');  
  // Cambiamos el valor de la propiedad privada con el setter
//   myProtectedSquare.side = -5;
  myProtectedSquare.side = 5;
  print('Area: ${myProtectedSquare.calculateArea()}');
  print('Area: ${myProtectedSquare.area}');
  
}

class Square {
  
  double side; // side * side
  
  Square({required this.side});
  
  double calculateArea() {
    return side * side;
  }
  
//   También se puede usar los getters para definir una propiedad computada.
  double get area {
    return side * side;
  }
}

class SquareProtegido{
  
  double _side; // PROPIEDAD PRIVADA de la clase
  
  SquareProtegido({required double side}) 
    : assert(side >= 0, 'side must be >= 0'),
      _side = side;
  
  double calculateArea() {
    return _side * _side;
  }
  
//   También se puede usar los getters para definir una propiedad computada.
  double get area {
    return _side * _side;
  }
  
  // SETTERS --> Sirve para que los objetos/instancias puedan cambiar valores de sus propiedades.
  set side(double value) {
    print('Setting new side value to $value');
    if(value < 0) throw 'Value must be >= 0';
    _side = value;
  }
  
}