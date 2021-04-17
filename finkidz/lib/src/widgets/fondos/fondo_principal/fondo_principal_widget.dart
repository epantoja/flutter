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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Stack(
          children: [
            Container(
              color: Color.fromRGBO(255, 245, 213, 1.0)
            ),
            Container(
              height: 110,
              width: double.infinity,
              alignment: Alignment.bottomCenter,

              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 217, 22, 1.0),
              ),
            ),
            Positioned(
              top: 80.0,
              width: MediaQuery.of(context).size.width,
              child: Text(_textoAppBar != null ? _textoAppBar: '', style: TextStyle(color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center,)
            ),
            Positioned(
              top: 80.0,
              left: 10.0,
              child: Image.asset("assets/img/icono_menu.png", width: 60.0, ),
            ),
            Positioned(
              top: 80.0,
              right: 10.0,
              child: Image.asset("assets/img/icono_notificaiones.png", width: 60.0, ),
            )
          ],
        )
      ),
      body: Stack(
        children: [
          _colorFondo(Color.fromRGBO(255, 245, 213, 1.0)),
          SafeArea(
            child: Center(
              child: Container(
                constraints: BoxConstraints.expand(),
                
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 15.0,
                      left: 10.0,
                      right: 10.0
                    ),
                    child:  _body,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    );
  }

  
  Widget _colorFondo(Color color) {
      return Container(
        width: double.infinity,
        height: double.infinity,
        color: color,
      );
  }

}

