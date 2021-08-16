import 'package:finkidz/src/pages/ejemplo_page.dart';
import 'package:finkidz/src/pages/inicio_page.dart';
import 'package:finkidz/src/pages/inicio_sesion_page.dart';
import 'package:finkidz/src/pages/principal_page.dart';
import 'package:finkidz/src/pages/recuperar_contrasena/cambio_contrasena_page.dart';
import 'package:finkidz/src/pages/recuperar_contrasena/ingresar_codigo_page.dart';
import 'package:finkidz/src/pages/recuperar_contrasena/olvido_contrasena_page.dart';
import 'package:finkidz/src/pages/registro_page.dart';
import 'package:finkidz/src/pages/seleccionar_usuario_page.dart';
import 'package:finkidz/src/widgets/splash_screen/splash_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  final amber= Colors.amber;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      //systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      //statusBarBrightness: Brightness.dark,//status bar brigtness
      statusBarIconBrightness:Brightness.light , //status barIcon Brightness
      //systemNavigationBarDividerColor: Colors.greenAccent,//Navigation bar divider color
      //systemNavigationBarIconBrightness: Brightness.light, //navigation bar icon 
    ));
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Jellee Roman',
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: amber,
            fontSize: 14.0
          ), 
          labelStyle: TextStyle(
            color: amber,
          ),
          border: InputBorder.none,
        )
      ),
      initialRoute: 'inicio',
      routes: {
        'ejemplo': (BuildContext context) => EjemploPage(), 
        'splash': (BuildContext context) => SplashWidget(),
        'inicio': (BuildContext context) => InicioPage(),
        'principal': (BuildContext context) => PrincipalPage(),
        'seleccionusuario': (BuildContext context) => SeleccionarUsuarioPage(),
        'iniciosesion': (BuildContext context) => InicioSesionPage(),
        'registro': (BuildContext context) => RegistroPage(),
        'olvidocontrasena': (BuildContext context) => OlvidoContrasenaPage(),
        'ingresacodigocontrasena': (BuildContext context) => IngresarCodigoPage(),
        'cambiocontrasena': (BuildContext context) => CambioContrasenaPage(),
      },
    );
  }
}
