void main() {
  // FUNCIONES
  // 1. Llamando una función básica
  greetEveryone();
  
  // 2. Llamado de una función que retorna un valor
  //2.1 Si no deseamos almacenar el valor, se invoca normalmente
  print("Hoy es el día número ${getDayNumber()}");
  // 2.2 Necesitamos almacenar el valor retornado para utilizar su valor en otras operaciones del programa
  final numeroDia = getDayNumber();
  print("En 3 días estaremos a: ${(numeroDia+3)}");
  
  
  // 3.1 Llamado de una función con parámetros
  print(greetSomeone("Ameli Pérez"));
  // 3.2 Y que pasa si intentamos?
  print(greetSomeone(45));
  print(greetSomeone(-15));
  print(greetSomeone(3.141516));
  print(greetSomeone(true));
  //3.3
  //print(greetSomeoneTyped(45));
  //print(greetSomeoneTyped(-15));
  //print(greetSomeoneTyped(3.141516));
  //print(greetSomeoneTyped(true));
  print(greetSomeoneTyped("Amelina"));
  
  // 4. Llamado de funciones con varios parámetros posicionales
  print(greetSomeoneHourOfDay("Ame Pg", 21));
  // ¿Qué pasa si solo envío un solo parámetro?
  print(greetSomeoneHourOfDay("Ame Pg", null));
  print(greetSomeoneHourOfDay("Amelina PEGA"));
  
  //5. FUNCIONES LAMBDA, ANONIMAS, ARROW FUNCTIONS, FUNCIONES FLECHA
  // Las funciones lamda, también conocidas como funciones anonimas o funciones flecha, se ejecutan de manera simple y no frecuente en la ejecución de un programa o sistema, en DART estas funciones solo pueden tener una sola instruccion para usar el operador =>
  
  // final double costoTotal;
  var calculaTotalCarrito = (double productQuantity, double 
  productPrice, double percentageDiscount) => (productQuantity*
  productPrice)*((100-percentageDiscount)/100);
  
  double cantidad = 3.180;
  double precio = 1725.10;
  double descuento = 8;
  
  print("""Costo del producto: ${precio}
  Cantidad solicitada: ${cantidad}
  Descuento definido: ${descuento}
  -----------------------------------------------------------------------------
  Costo total: ${calculaTotalCarrito(cantidad, precio, descuento)}""");
  
 //6. Llamado de una funcion con parametros nombrtados
  print(infoCarListStatus(buyerName: "Amelia"));
  
  //6.1 Llamado de una función con los párametros en desorden posicional
  
  print(infoCarListStatus(
  
  status: "En espera del pago",
  amountCarList: 2416.20,
  buyerName: "Edgar"));
  
  
}

//  FUNCIONES SIN PARAMETROS Y SIN RETORNO DE VALOR
greetEveryone()   //<-- Dynamic
{
  print("Hola a todos y a todas desde DART");
  
}

// 2. FUNCIONES QUE RETORNAN VALORES
int getDayNumber()    //<-- Retorna un entero
{
  DateTime now = DateTime.now();
  return now.day;
}

// 3. FUNCIONES QUE REQUIEREN DE AL MENOS UN PARÁMETRO
String greetSomeone(personName)
{
    return "Hola, ${personName}";
}

// 3.1 FUNCIÓN QUE RECIBE PARAMETROS TIPIFICADOS
String greetSomeoneTyped(String personName)
{
    return "Hola, ${personName}";
}

// 4 FUNCIONES QUE RECIBEN MÁS DE UN PARÁMETRO
// int? - puede ser vacio
// [] - puede ser opcional
String greetSomeoneHourOfDay(String personName, [int? hourDay])
{
    String greeting;
  //El operados ??= significa que si es nulo lo inialice como, en caso de que tenga valor ignora la instruccion
    hourDay ??= DateTime.now().hour;
  print("Hora: ${hourDay}");
      if(hourDay>= 6 && hourDay<12)
    {
        greeting= "Buenos Días";
    }
    else if(hourDay>= 12 && hourDay<18)
    {
      greeting= "Buenas tardes";
    }
    else 
    {
      greeting = "Buenas noches";
    }
    return "${greeting}, ${personName}";
}

//6. FUNCIONES CON PARAMETROS NOMBRADOS

String infoCarListStatus({required String buyerName, double amountCarList=0.0,
String status="Seleccion de productos"})
  
{
  return "El carrito de compras de: ${buyerName}, tiene un total de: \$${amountCarList} y actualmente está en estatus: ${status}";
}
