import 'package:finkidz/src/models/boton_seleccion_model.dart';
import 'package:flutter/material.dart';

class BotonSeleccionWidget extends StatefulWidget {
  
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<BotonSeleccion> botonSeleccionList;

  BotonSeleccionWidget({this.defaultSelectedIndex = 0, @required this.onChange, @required this.botonSeleccionList});

  @override
  _BotonSeleccionWidgetState createState() => _BotonSeleccionWidgetState();
}

class _BotonSeleccionWidgetState extends State<BotonSeleccionWidget> {

  List<BotonSeleccion> _botonSeleccionList = [];
  int _defaultSelectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _botonSeleccionList = widget.botonSeleccionList;
    _defaultSelectedIndex = widget.defaultSelectedIndex;
  }

  @override
  Widget build(BuildContext context) {

    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _botonSeleccionList.length; i++) {
      _navBarItemList.add(_gestruDetector(_botonSeleccionList[i].descripcion, _botonSeleccionList[i].id));
    }

    return Container(
      child: Column(
        children: _navBarItemList
      )
    );
    
  }

  Widget _gestruDetector(String descripcion, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _defaultSelectedIndex = index;
        });
      },
      child: Stack(
        children: [
          _metodoFondoImagen(index),
          _metodoTextoBoton(descripcion)
        ],
      ),
    );
  }

  Widget _metodoFondoImagen(int index) {
    return Container(
      alignment: Alignment.center,
      child: Image(
        image: _defaultSelectedIndex == index ? AssetImage('assets/img/boton_seleccionado.png') : AssetImage('assets/img/boton_seleccion.png'),
        width: 300.0,
      ),
    );
  }

  Widget _metodoTextoBoton(String descripcion) {
    return Container(
      padding: EdgeInsets.only(
        top: 15.0
      ),
      alignment: Alignment.center,
      child: Text(descripcion, style: TextStyle(color: Colors.black54, fontSize: 25.0),),
    );
  }

}