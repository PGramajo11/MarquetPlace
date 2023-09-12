import 'package:flutter/material.dart';
import 'package:marketplace_app/widgets/widgets.dart';

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
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
                hintText: 'pedronavaja@miumg.edu.gt',
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.blue),
                prefixIcon: Icon(
                  Icons.alternate_email_sharp,
                  color: Colors.blue,
                )),
          )
        ],
      )),
    );
  }
}
