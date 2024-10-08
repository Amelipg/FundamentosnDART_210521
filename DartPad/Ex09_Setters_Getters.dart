void main() {
  final mySquare = Square (side: 18);
  
 mySquare._side= -32;
  

  print("""Lado del cuadrado: ${mySquare._side}
  Área que opcupa: ${mySquare.calculateArea()}""");
 
}

class Square {
  
  double _side;

  Square({required double side})
    : _side = side;
  
  double get area{
    return _side * _side;
  }
  
  set side( double value){
    print('Asignando un nuevo valor al lado: $value');
    if (value < 0) throw 'El valor del lado debe ser mayor a cero 0';
    
    _side = value;
  }

  double calculateArea()
  {
    return _side * _side;
  }
}