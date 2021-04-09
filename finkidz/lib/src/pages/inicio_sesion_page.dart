
import 'package:flutter/material.dart';

class InicioSesionPage extends StatefulWidget {
  @override
  _InicioSesionPageState createState() => _InicioSesionPageState();
}


class _InicioSesionPageState extends State<InicioSesionPage>  {

  final amber= Colors.amber;
  final _passwordFocusNode = FocusNode();
  bool hidePassword = true;
  final _formKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
             _colorFondo(Color.fromRGBO(255, 217, 22, 1.0)),
            SafeArea(
            child: Center(
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/bg1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: SingleChildScrollView(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Form(
                        key: _formKey,
                        child : _cuerpoPagina(context),
                      ),
                    ),
                  ),
                ),
              ),
            
            ),
          ),
       
          ],
        ),
      );
  }

  Widget _cuerpoPagina(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
          height: MediaQuery.of(context).size.height * 0.05,
          //child: _crearBoton("Saltar")
          child: Text("Iniciar sesión", 
                  style: TextStyle(color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center,)
        ),
        SingleChildScrollView(
          child: Container(
            //child: _crearBoton("Saltar")
            child: _controles(context)
          ),
        ),
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

  Widget _agregarLogo() {
    return Center(
      child: Image(
        image: AssetImage('assets/img/logo_app.png'),
        width: 210.0,
      ),
    );
  }

  Widget _controles(BuildContext context) {
    return Column(
      children: [
        
        Stack(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/img/barra_texto.png'),
                width: 350.0,
                height: 90.0,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                //soft keyboard shows next icon in bottom right corner
                textInputAction: TextInputAction.next,
                maxLines: 1,
                decoration: InputDecoration(
                  //hintText: 'ejemplo@correo.com',
                  labelText: 'Correo Electronico',
                  hintStyle: TextStyle(
                    color: amber,
                    fontSize: 14.0
                  ),
                  labelStyle: TextStyle(
                    color: amber,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ], 
        ),
        Stack(
          children: [
            Container(
              child: Image(
                image: AssetImage('assets/img/barra_texto.png'),
                width: 350.0,
                height: 90.0,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                focusNode: _passwordFocusNode,
                textInputAction: TextInputAction.next,
                maxLines: 1,
                obscureText: hidePassword,
                decoration: InputDecoration(
                  //hintText: 'Contraseña',
                  labelText: 'Contraseña',
                  hintStyle: TextStyle(
                    color: amber,
                    fontSize: 14.0
                  ),
                  labelStyle: TextStyle(
                    color: amber,
                  ),
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() 
                      {
                        hidePassword = !hidePassword;
                      });
                    },
                    icon: Icon(
                      hidePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.black45,
                    ),
                  ),
                ),
              ),
            ),
          ], 
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, "olvidoContrasena"),
          child: Text(
            "¿Olvidaste tu contraseña?", style: TextStyle(color: Colors.white, fontSize: 18.0)
          ),
        ),
        _crearBoton("INICIAR SESIÓN"),
        SizedBox(height: 15.0,),
        Column(
          children: [
            Text("¿Aún no tienes cuenta?", style: TextStyle(color: Colors.white, fontSize: 12.0)),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, "registro"),
              child: Text(
                "Registrate", style: TextStyle(color: Colors.white, fontSize: 16.0, decoration: TextDecoration.underline)
              ),
            ),
          ],
        )
      ],
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

            },

          ),
      ),
    );
  }

}