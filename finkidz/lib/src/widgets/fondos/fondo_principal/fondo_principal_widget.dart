
import 'package:flutter/material.dart';

class FondoPrincipalWidget extends StatefulWidget {

  final Widget body;
  final String textoAppBar;

  FondoPrincipalWidget({@required this.body, this.textoAppBar, Key key}) : super(key: key);  

  @override
  _FondoPrincipalWidgetState createState() => _FondoPrincipalWidgetState();
}

class _FondoPrincipalWidgetState extends State<FondoPrincipalWidget> {
  Widget _body;
  String _textoAppBar;
  List<Widget> actions = [];
  final amber= Colors.amber;


  @override
  void initState() {
    super.initState();
    _body = widget.body;
    _textoAppBar = widget.textoAppBar;
  }


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondo(),
          _appbar()
        ],
      ),
    );
  }

  Widget _fondo() {
    var size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 245, 213, 1.0),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: size.height * 0.15,
            left: 10.0,
            right: 10.0
          ),
          child:  _body,
        ),
      ),
    );
  }

  Widget _appbar() {
    var size = MediaQuery.of(context).size;
    return Positioned(
      child: Container(
        height: size.height * 0.16,
        child: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.11),
          child: Stack(
            children: [
              Container(
                color: Colors.transparent
              ),
              Container(
                height: size.height * 0.110,
                width: double.infinity,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 217, 22, 1.0),
                ),
              ),
              _titulo(size),
              _iconoIzquiero(size),
              _iconoDerecho(size)
            ],
          )
        ),
      ),
    );
  }

  Widget _titulo(Size size) {
    return Positioned(
      top: size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      child: Text(_textoAppBar != null ? _textoAppBar: '', style: TextStyle(color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center,)
    );
  }

  Widget _iconoIzquiero(Size size) {
    return Positioned(
      top: size.height * 0.075,
      left: 10.0,
      child: Image.asset("assets/img/icono_menu.png", width: size.width * 0.15 ),
    );
  }

  Widget _iconoDerecho(Size size) {
    return Positioned(
      top: size.height * 0.075,
      right: 10.0,
      child: Image.asset("assets/img/icono_notificaiones.png", width: size.width * 0.15 ),
    );
  }
}

