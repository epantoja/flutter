import 'package:finkidz/src/widgets/boton_principal_widget.dart';
import 'package:finkidz/src/widgets/fondo_widget.dart';
import 'package:finkidz/src/widgets/logo_return_banner_widget.dart';
import 'package:finkidz/src/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RegistroPage extends StatefulWidget {
  @override
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {

  bool _aceptaTerminos = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: FondoWidget(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: _cuerpoPagina(context),
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
          child: Text("Registro" , 
                  style: TextStyle(color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 20.0,),
        Container(
          child: _controles(context)
        ),
      ],
    );
  }

  Widget _controles(BuildContext context) {
    return Column(
      children: [
        TextFieldWidget(hintText: "", labelText: "Nombre", typeInput: TextInputType.text, isPassword: false,),
        TextFieldWidget(hintText: "", labelText: "Correo electrónico", typeInput: TextInputType.emailAddress, isPassword: false,),
        TextFieldWidget(hintText: "", labelText: "Teléfono", typeInput: TextInputType.number, isPassword: false,),
        TextFieldWidget(hintText: "", labelText: "Contraseña", typeInput: TextInputType.visiblePassword, isPassword: true,),
        TextFieldWidget(hintText: "", labelText: "Repetir contraseña", typeInput: TextInputType.visiblePassword, isPassword: true,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Checkbox(
                activeColor:  Color.fromRGBO(30, 221, 198, 1.0),
                checkColor: Colors.white,
                value: _aceptaTerminos,
                onChanged: (value) {
                  setState(() {
                    _aceptaTerminos = value;
                  });
                },
              ),
              Text('Acepto los términos y condiciones', style: TextStyle(color: Colors.white), textAlign: TextAlign.center),
          ]),
        ),
        BotonPrincipalWidget(tituloBoton: "REGISTRARME", onPressed: () {
          
        },),
        SizedBox(height: 10.0,),
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "¿Ya tienes cuenta? Inicia sesión", style: TextStyle(color: Colors.white, fontSize: 18.0)
          ),
        ),
      ],
    );
  }

  

}

