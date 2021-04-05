import 'package:finkidz/src/class/CurveClipper.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageView(
          children: [
            _pagina1(),
            _pagina2(),
            _pagina3(),
            _pagina4(),
          ],
        ),
      )
    );
  }

  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(255, 217, 22, 1.0)),
        //_agregarLogo(),
        _crearBotonRedondeado()
      ],
    );
  }

  Widget _pagina2() {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(255, 192, 0, 1.0)),
        _colorFondoInferior(Color.fromRGBO(255, 217, 22, 1.0)),
        _crearBoton(),
        _crearBotonRedondeado(),
      ],
    );
  }

  Widget _pagina3() {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(69, 193, 194, 1.0)),
        _colorFondoInferior(Color.fromRGBO(38, 183, 184, 1.0)),
        _crearBoton()
      ],
    );
  }

  Widget _pagina4() {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(153, 68, 195, 1.0)),
        _colorFondoInferior(Color.fromRGBO(137, 22, 194, 1.0))
      ],
    );
  }

  Widget _colorFondo(Color color) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color,
    );
  }

  Widget _colorFondoInferior(Color color) {
    return Positioned(
      bottom: 0.0,
      right: 0.0,
      left: 0.0,
      child: Container(
        width: 0,
        height: 500.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(450.0, 250.0),
          ),
          color: color
        ),
      ),
    );
  }

  Widget _agregarLogo() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container()
          ),
          Image(
            image: AssetImage('assets/img/logo_findkiz.png'),
            width: 300.0,
          ),
          SizedBox(height: 50.0,),
          Image(
            image: AssetImage('assets/img/logo_cargando.png'),
            width: 300.0,
          ),
          Expanded(
            child: Container()
          ),
        ],
      ),
    );
  }

  Widget _crearBoton() {
    return Container(
      padding: EdgeInsets.all(40.0),
      alignment: Alignment.topRight,
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
              child: Text("Saltar", style: TextStyle(fontSize: 25.0),),
            ),
            onPressed: () {

            },

          ),
      ),
    );
  }

  Widget _crearBotonRedondeado() {
     return Center(
       child: ClipPath(
         clipper: CurveClipper(),
         child: Container(
          height: 100.0,
          width: 250.0,
          padding: EdgeInsets.all(40.0),
          color: Color.fromRGBO(30, 221, 198, 1.0),
      ),
       ),
     );
  }
}