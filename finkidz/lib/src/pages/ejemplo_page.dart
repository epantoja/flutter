import 'package:finkidz/src/widgets/controles/graficas/grafica_actividad/grafica_actividad_widget.dart';
import 'package:finkidz/src/widgets/fondos/fondo_principal/fondo_principal_widget.dart';
import 'package:flutter/material.dart';

class EjemploPage extends StatefulWidget {
  EjemploPage({Key key}) : super(key: key);

  @override
  _EjemploPageState createState() => _EjemploPageState();
}

class _EjemploPageState extends State<EjemploPage> {
  @override
  Widget build(BuildContext context) {
    return FondoPrincipalWidget(
      textoAppBar: "Grafica",
      body: GraficaActividadesWidget(),
    );
  }
}