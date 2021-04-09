import 'package:flutter/material.dart';

class SeleccionarUsuarioPage extends StatefulWidget {
  @override
  _SeleccionarUsuarioPageState createState() => _SeleccionarUsuarioPageState();
}


class _SeleccionarUsuarioPageState extends State<SeleccionarUsuarioPage>  {
  
  bool _selectPadre = true;
  bool _selectHijo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          children: [
            _pagina1(context),
          ],
        ),
      ),
    );
  }

  Widget _pagina1(BuildContext context) {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(255, 217, 22, 1.0)),
        SafeArea(
          child: _fondoPagina(context)
        ),
        SafeArea(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 20.0
                ),
                height: MediaQuery.of(context).size.height * 0.25,
                //child: _crearBoton("Saltar")
                child: _agregarLogo()
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 80.0),
                height: MediaQuery.of(context).size.height * 0.15,
                //child: _crearBoton("Saltar")
                child: Text("Selecciona entre estas dos opciones para tu perfil", 
                        style: TextStyle(color: Colors.white, fontSize: 22.0), textAlign: TextAlign.center,)
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.25,
                //child: _crearBoton("Saltar")
                child: _seleccionarPerfil(context)
              ),
              SizedBox(height: 20.0,),
              Container(
                //height: MediaQuery.of(context).size.height * 0.25,
                //child: _crearBoton("Saltar")
                child: _crearBoton("SIGUIENTE")
              ),
            ],
          ),
        )
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

  Widget _fondoPagina(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/bg1.png'),
        fit: BoxFit.fill,
      )
    );
  }

  Widget _agregarLogo() {
    return Center(

      child: Image(
        image: AssetImage('assets/img/logo_app.png'),
        width: 210.0,
      ),
    );
  }

  Widget _seleccionarPerfil(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selectPadre = true;
                _selectHijo = false;
              });
            },
            child: Stack(
              children: [
                Container(
                  child: Image(
                    image: !_selectPadre ? AssetImage('assets/img/boton_seleccion.png') : AssetImage('assets/img/boton_seleccionado.png'),
                    width: 300.0,
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: MediaQuery.of(context).size.width / 5.5,
                  child: Text("Soy Padre", style: TextStyle(color: Colors.black54, fontSize: 25.0),),
                )
              ],
            ),
          ),
          SizedBox(height: 10.0,),
          GestureDetector(
            onTap: () {
              setState(() {
                _selectPadre = false;
                _selectHijo = true;
              });
            },
            child: Stack(
              children: [
                Container(
                  child: Image(
                    image: !_selectHijo ? AssetImage('assets/img/boton_seleccion.png') : AssetImage('assets/img/boton_seleccionado.png'),
                    width: 300.0,
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: MediaQuery.of(context).size.width / 4,
                  child: Text("Soy Hijo", style: TextStyle(color: Colors.black54, fontSize: 25.0),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearBoton(String titulo) {
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
              child: Text(titulo, style: TextStyle(fontSize: 18.0),),
            ),
            onPressed: () {
              Navigator.pushNamed(context, "inicioSesion");
            },

          ),
      ),
    );
  }

}