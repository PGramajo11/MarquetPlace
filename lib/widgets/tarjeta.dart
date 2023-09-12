import 'package:flutter/material.dart';

//aca en esta parte creamos la tarjeta del formulario
class Tarjeta extends StatelessWidget {
  final Widget child;

  const Tarjeta({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 30), //agregamos la separacion a laos bordes
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(20),
        decoration: _CreacionTarjeta(),
        child: this.child,
      ),
    );
  }

  //en esta parte le damos el diseño directamente a nuestra tarjete del formulario
  BoxDecoration _CreacionTarjeta() => BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black12, //agregamos la sombra de la tarjeta
              blurRadius: 15,
              offset: Offset(0, 5),
            )
          ]);
}
