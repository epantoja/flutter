
import 'package:finkidz/src/widgets/boton_principal_widget.dart';
import 'package:finkidz/src/widgets/fondo_widget.dart';
import 'package:finkidz/src/widgets/logo_return_banner_widget.dart';
import 'package:finkidz/src/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class InicioSesionPage extends StatefulWidget {
  @override
  _InicioSesionPageState createState() => _InicioSesionPageState();
}

class _InicioSesionPageState extends State<InicioSesionPage>  {

  final amber= Colors.amber;
  bool hidePassword = true;
  final _formKey = GlobalKey();
  int _selectIndexPadre = 0;
  
  @override
  Widget build(BuildContext context) {
    _selectIndexPadre = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: FondoWidget(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: _formKey,
                child : _cuerpoPagina(context),
              ),
            ),
          ),
        )
      );
  }

  Widget _cuerpoPagina(BuildContext context) {
    return Column(
      children: [
        Container(
          //child: _crearBoton("Saltar")
          child: LogoReturnBannerWidget()
        ),
        SizedBox(height: 20.0,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0),
          //child: _crearBoton("Saltar")
          child: Text("Iniciar sesión" , 
                  style: TextStyle(color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 20.0,),
        Container(
            //child: _crearBoton("Saltar")
            child: _controles(context)
        ),
      ],
    );
  }

  Widget _controles(BuildContext context) {
    return Column(
      children: [
        
        TextFieldWidget(hintText: "", labelText: "Correo electrónico", typeInput: TextInputType.emailAddress, isPassword: false,),
        TextFieldWidget(hintText: "", labelText: "Contraseña", typeInput: TextInputType.text, isPassword: true,),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, "olvidocontrasena"),
          child: Text(
            "¿Olvidaste tu contraseña?", style: TextStyle(color: Colors.white, fontSize: 18.0)
          ),
        ),
        SizedBox(height: 15.0,),
        BotonPrincipalWidget(tituloBoton: "INICIAR SESIÓN", onPressed: () {
          
        },),
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

}