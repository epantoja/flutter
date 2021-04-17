import 'package:flutter/material.dart';

class BotonPrincipalWidget extends StatefulWidget {

  final Function() onPressed;
  final String tituloBoton;


  BotonPrincipalWidget({@required this.onPressed, @required this.tituloBoton});

  @override
  _BotonPrincipalWidgetState createState() => _BotonPrincipalWidgetState();
}


class _BotonPrincipalWidgetState extends State<BotonPrincipalWidget> {

  String _tituloBoton;

  @override
  void initState() {
    super.initState();

    _tituloBoton = widget.tituloBoton;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child:  ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 10,
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              onPrimary: Colors.white,
              primary: Color.fromRGBO(30, 221, 198, 1.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Text(_tituloBoton, style: TextStyle(fontSize: 18.0),),
            ),
            onPressed: () {
              widget.onPressed();
            },

          ),
      ),
    );
  }
}