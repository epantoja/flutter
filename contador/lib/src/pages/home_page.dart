import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final extiloTexto = TextStyle(fontSize: 25.0);
  final int conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo', style: extiloTexto),
        centerTitle: true,
        elevation: 10.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text('Numero de clicks: ', style: extiloTexto),
             Text('$conteo', style: extiloTexto)
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5.5,
        child: Icon(Icons.add),
        onPressed: () {
          //conteo = conteo + 1;
        },
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}