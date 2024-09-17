//PRACTICA 05: Tipo de dato dinámico (Dynamic - Comodín)
void main() {
  dynamic errorMessage;
  print(""" El valor inicial de errorMessage es $errorMessage
  Al ser dinámico permite la asignación de valores nulos.""");

  errorMessage = "El usuario y la contraseña no coinciden";
  print(
      """----------------------------------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  Ahora le hemos asignado un valor de un String.""");

  errorMessage = 404;
  print(""" -------------------------------------------------------------
  El nuevo valor de ErrorMessage es: $errorMessage
  En algunos sistemas los errores son controlados por un código numérico""");

  errorMessage = false;
  print(""" ------------------------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  Cuando el sistema funciona correctamente el mensaje de error puede ser FALSO.""");

  errorMessage = [400, 404, 500, 502, 505];
  print(""" ------------------------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  En caso de que el sistema detecte varios errores podria agregarlos a una Lista""");

  errorMessage = {125, "Usuario no encontrado", true, -1025.16, 'A'};
  print(""" ------------------------------------------------------------------
  El nuevo valor de errorMessage es: $errorMessage
  O incluso como un conjunto (SET) de datos.""");

  errorMessage = () => true;
  print(""" ------------------------------------------------------------------
  El ultimo cambio a errorMessage es: $errorMessage
  Que en este caso es el resultado de una función.""");
}
