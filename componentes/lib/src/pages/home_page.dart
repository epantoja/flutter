import 'package:flutter/material.dart';


import 'package:componentes/src/utils/icono_string_utils.dart';
import 'package:componentes/src/providers/menu_provider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context)
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {

    final List<Widget> lista = [];

    data.forEach((item) {
      final widgetTemp = ListTile (
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {

          Navigator.pushNamed(context, item['ruta']);

          /* final route = MaterialPageRoute (
            builder: (context) {
              return AlertPage();
            }
          );

          Navigator.push(context, route); */
        },
      );

      lista..add(widgetTemp)
           ..add(Divider());
    });

    return lista;
  }
}