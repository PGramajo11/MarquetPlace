//se crea el fondo del login
import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          _CajaAzul(),
        ],
      ),
    );
  }
}

class _CajaAzul extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _fondoAzul(),
    );
  }

  BoxDecoration _fondoAzul() => BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromRGBO(63, 63, 156, 1),
        Color.fromRGBO(92, 70, 178, 1)
      ]));
}
