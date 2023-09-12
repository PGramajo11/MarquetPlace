import 'package:flutter/material.dart';
import 'package:marketplace_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Market Place',
      initialRoute: 'login',
      //en esta parte podemos controlar a que ventana ir al iniciar la aplicacion
      routes: {'login': (_) => LoginScreen(), 'home': (_) => HomeScreen()},
      theme:
          //definimos el color gris de fondo
          ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.grey[300]),
    );
  }
}
