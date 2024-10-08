void main(){
  final mySquare = Square(side:10);

  print("""El lado del cuadrado es de: ${mySquare._side} su área es de ${mySquare.area}""");

  mySquare._side = 5;
  print("""El lado del cuadrado es de: ${mySquare._side} su área es de: ${mySquare.area}""");
}

class Square {
  double _side;

  Square({ required double side })
    : assert(side > 0, 'El valor del lado debe ser mayor a 0'),
      _side = side;
  
  double get area {
      return _side * _side;
  }
}