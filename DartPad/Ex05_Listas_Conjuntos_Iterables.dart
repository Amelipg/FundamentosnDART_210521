                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           void main() {
  // La declaración de una list extra limitada por corchetes (brackets) y cada elemento de ser individual y puede repetirse
  final numeros = [1,2,3,4,5,6,7,8,9,10];
  
  //print (numero);
  print("Ejemplo de LIST: $numeros");
  print(
    "Confirmamos el tipo de dato para numeros que es: ${numeros.runtimeType}");
  print("Podemos acceder a cierta infomación de una lista tal como: ");
  print("El tamaño: ${numeros.length}");

  print("""
    Para acceder a los elementos debemos especificar la posicion entre []
  El primer elemento en la primera posicion es: ${numeros[0]}
  El elemento en la segunda posicion es: ${numeros[1]}, siempre respetando la posicion-1
  El ultimo elemento de la lista seria: ${numeros[numeros.length - 1]}
  ----------------------------------------------------------------------------------
  De igual manera existen las siguientes alternativas
  Primer elemento ${numeros.first}
  Ultimo elemento ${numeros.first}
  -----------------------------------------------------------------------------------
  
  Tambien tendremos acceso a algunos metodos que permitan la transformacion o filtrado del contenido
  Por ejemplo usar reversed, para invertir el orden original: ${numeros.reversed}
  Es importante observar que la función reversed ha transformado la LIST original y la retorna como un ITERABLE,
   """);

  //Iterables
  final numerosAlreves = numeros.reversed;
  print("Los iterables son estructuras de datos DART y otros lenguajes paraoptimizar en termino de velocidad el acceso a los datos y propiedades");
  print("Ejemplo de un ITERABLES: $numerosAlreves");
  print("Confirmamos el tipo de dato para NUMEROS AL REVES que es: ${numerosAlreves.runtimeType}");
  
  print("De igual manera podemos tranformar una LISTA en ITERABLES y vicerversa");
  print("Convertimos el ITERABLE a LISTA usando .toList(): ${numerosAlreves.toList()} y verificamos su tipo de dato ${numerosAlreves.toList().runtimeType} ");

  // Conjunto de datos SET
  // Un SET es una estructura de datos utilizada por DART, que simplifica los elementos eliminando los duplicados
  print("""Veamos que pasa con los conjuntos (SET)
  Convertimos el ITERABLE en un SET usando .toSet: ${numerosAlreves.toSet()}
  Podemos visualizar en el resultado que el SET eliminado lo duplicamos y ahora delimita datos usando{}""");

  // De igual manera podemos utilizar operaciones para el filtro de elementos usando.where()

  final numerosMayoresA5= numeros.where((int num){
    return num > 5;
  });

  print("""Hemos filtrado sobre LIST solo los elemntos mayores a 5: 
  Resultado del filtro: ${numerosMayoresA5.toSet()}""" );
  print("Eliminamos duplicados.... ${numerosMayoresA5.toSet()}");
  
}

