import 'package:finkidz/src/widgets/controles/boton_principal/boton_principal_widget.dart';
import 'package:finkidz/src/widgets/fondos/fondo_inicio/fondo_widget.dart';
import 'package:finkidz/src/widgets/logos/logo_return_banner/logo_return_banner_widget.dart';
import 'package:finkidz/src/widgets/controles/textfield/textfield_widget.dart';
import 'package:flutter/material.dart';

class OlvidoContrasenaPage extends StatelessWidget {
  const OlvidoContrasenaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: FondoWidget(
          body: Center(
            child: _cuerpoPagina(context)
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
          child: Text("Recuperar contraseña" , 
                  style: TextStyle(color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 60.0,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0),
          //child: _crearBoton("Saltar")
          child: Text("Ingresa el correo electrónico que usaste para registrarte" , 
                style: TextStyle(color: Colors.black54, fontSize: 13.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 20.0,),
        Container(
          //child: _crearBoton("Saltar")
          child: TextFieldWidget(
            hintText: "", 
            labelText: "Correo electrónico", 
            typeInput: TextInputType.text, isPassword: false,
          ),
        ),
        SizedBox(height: 15.0,),
        Container(
          child: BotonPrincipalWidget(tituloBoton: "RECIBIR CORREO", onPressed: () {
            Navigator.pushNamed(context, "ingresacodigocontrasena");
          },),
        )
      ],
    );
  }
}