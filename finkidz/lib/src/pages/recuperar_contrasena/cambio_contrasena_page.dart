import 'package:finkidz/src/widgets/boton_principal_widget.dart';
import 'package:finkidz/src/widgets/fondo_widget.dart';
import 'package:finkidz/src/widgets/logo_return_banner_widget.dart';
import 'package:finkidz/src/widgets/modal_findkiz_widget.dart';
import 'package:finkidz/src/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';

class CambioContrasenaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: FondoWidget(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: _cuerpoPagina(context)
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
          child: Text("Restaurar contraseña" , 
                  style: TextStyle(color: Colors.white, fontSize: 20.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 40.0,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          //child: _crearBoton("Saltar")
          child: Text("Ingresa tu nueva contraseña" , 
                style: TextStyle(color: Colors.black54, fontSize: 13.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 20.0,),
        Container(
          //child: _crearBoton("Saltar")
          child: Column(
            children: [
              TextFieldWidget(
                hintText: "", 
                labelText: "Contraseña", 
                typeInput: TextInputType.text, isPassword: true,
              ),
              TextFieldWidget(
                hintText: "", 
                labelText: "Repetir contraseña", 
                typeInput: TextInputType.text, isPassword: true,
              )
            ],
          ),
        ),
        SizedBox(height: 15.0,),
        Container(
          child: BotonPrincipalWidget(tituloBoton: "SIGUIENTE", onPressed: () {
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return ModalFindkizWidget(
                  mensaje: 'Tu contraseña fue restaurada con éxito',
                  rutaImagen: 'assets/img/icono_modal_contrasena.png',
                  textoBoton: 'ACEPTAR',
                );
              }
            );
          },),
        )
      ],
    );
  }
}