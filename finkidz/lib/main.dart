import 'package:finkidz/src/pages/inicio_page.dart';
import 'package:finkidz/src/pages/inicio_sesion_page.dart';
import 'package:finkidz/src/pages/olvido_contrasena_page.dart';
import 'package:finkidz/src/pages/registro_page.dart';
import 'package:finkidz/src/pages/seleccionar_usuario_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Jellee Roman'
      ),
      initialRoute: 'inicio',
      routes: {
        'inicio': (BuildContext context) => InicioPage(),
        'seleccionusuario': (BuildContext context) => SeleccionarUsuarioPage(),
        'inicioSesion': (BuildContext context) => InicioSesionPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'olvidoContrasena': (BuildContext context) => OlvidoContrasenaPage(),
      },
    );
  }
}
