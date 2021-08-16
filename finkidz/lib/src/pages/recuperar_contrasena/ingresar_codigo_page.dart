import 'package:finkidz/src/widgets/controles/boton_principal/boton_principal_widget.dart';
import 'package:finkidz/src/widgets/fondos/fondo_inicio/fondo_widget.dart';
import 'package:finkidz/src/widgets/logos/logo_return_banner/logo_return_banner_widget.dart';
import 'package:finkidz/src/widgets/controles/textfield/textfield_widget.dart';
import 'package:flutter/material.dart';

class IngresarCodigoPage extends StatelessWidget {
  const IngresarCodigoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FondoWidget(
      body: Center(
          child: _cuerpoPagina(context)
        ),
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
          child: Text("Ingrese su código" , 
                  style: TextStyle(color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 60.0,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 80.0),
          //child: _crearBoton("Saltar")
          child: Text("Ingrese el código que recibiste" , 
                style: TextStyle(color: Colors.black54, fontSize: 13.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 20.0,),
        Container(
          //child: _crearBoton("Saltar")
          child: TextFieldWidget(
            hintText: "", 
            labelText: "Ingresa el código", 
            typeInput: TextInputType.text, isPassword: false,
            icono: Icons.vpn_key
          ),
        ),
        SizedBox(height: 15.0,),
        Container(
          child: BotonPrincipalWidget(tituloBoton: "SIGUIENTE", onPressed: () {
            Navigator.pushNamed(context, "cambiocontrasena");
          },),
        )
      ],
    );
  }
}