import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/pages/login_page.dart';
import 'package:tic_tac_toe/src/pages/register_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => LoginPage(),
        'register' : (BuildContext context) => RegisterPage(),
      },
    );
  }
}
