import 'package:flutter/material.dart';

//en esta parte programamos todo lo relacionado a la forma de presentarse la entrada de texto
class InputDecorations {
  static InputDecoration authInputDecoration(
      {required String
          hinText, //en esta parte mencionamos algunas caracteristicas que necesita nuestro diseño para poder funcionar
      required String
          labelText, // estos requerimiento los mandaremos desde nuestro login_screen
      IconData? prefixIcon}) {
    return InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
        ),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2)),
        hintText: hinText,
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.blue),
        prefixIcon: prefixIcon !=
                null //en esta parte solo decimos que nuestro icono puede ser nulo
            ? Icon(
                prefixIcon,
                color: Colors.blue,
              )
            : null);
  }
}
