import 'package:flutter/material.dart';
import 'package:marketplace_app/widgets/widgets.dart';
import 'package:marketplace_app/UI/decoracion_entrada.dart';

//creamos la pantalla del login
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
          child: SingleChildScrollView(
              child: Column(
        children: [
          SizedBox(
              height: 290), //agregamos la posicion de nuestra tarjeta de login
          Tarjeta(
              //creamos este widget para agregar el contenido de nuestro formulario
              child: Column(
            children: [
              SizedBox(height: 10),
              Text('Login', style: Theme.of(context).textTheme.headline4),
              SizedBox(height: 30),
              _Formulario()
            ],
          )),
          //boton de crear nueva cuenta
          SizedBox(height: 50),
          Text('Crear una cuenta'),
          SizedBox(height: 40),
        ],
      ))),
    );
  }
}

//creamos el widget donde escribiremos nuestro usuario
class _Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //Mantener la referencia a la llave
      child: Form(
          child: Column(
        children: [
          TextFormField(
            //creamos la peticion para llamar a la caja de texto del correo
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hinText: 'pedronavaja@gmail.com',
                labelText: 'Email',
                prefixIcon: Icons.alternate_email_rounded),
          ),
          SizedBox(height: 40), //separacion entre las cajas de texto
          TextFormField(
            autocorrect: false,
            obscureText: true, //oculatamos letras
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecorations.authInputDecoration(
                hinText: '********',
                labelText: 'Contraseña',
                prefixIcon: Icons.lock_clock_outlined),
          ),

          SizedBox(height: 40), //separacion entre las cajas de texto

          MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.blue,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                  'Ingresar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {})
        ],
      )),
    );
  }
}
