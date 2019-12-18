import 'package:flutter/material.dart';

class HomePagesTemp extends StatelessWidget {

  final _opciones = ['Uno','Dos','Tres','Cuatro','Cinco','Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lista Componentes'),
      ),
      body: ListView(
        //children: _crearItems()
        children: _crearItemsCorto()
      ),
    );
  }

  /* List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();
    for (String opcion in _opciones) {

      final widgetTemp = ListTile(
        title: Text(opcion),
      );

      lista.add(widgetTemp);
      lista.add(Divider());
    }
    return lista;
  } */

  List<Widget> _crearItemsCorto() {
    return _opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile (
            title: Text(item + ' !'),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
  
}