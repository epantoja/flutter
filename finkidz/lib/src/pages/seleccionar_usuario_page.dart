import 'package:finkidz/src/models/boton_seleccion_model.dart';
import 'package:finkidz/src/widgets/controles/boton_principal/boton_principal_widget.dart';
import 'package:finkidz/src/widgets/controles/boton_seleccion/boton_seleccion_widget.dart';
import 'package:finkidz/src/widgets/fondos/fondo_inicio/fondo_widget.dart';
import 'package:finkidz/src/widgets/logos/logo_return_banner/logo_return_banner_widget.dart';
import 'package:flutter/material.dart';

class SeleccionarUsuarioPage extends StatefulWidget {
  @override
  _SeleccionarUsuarioPageState createState() => _SeleccionarUsuarioPageState();
}


class _SeleccionarUsuarioPageState extends State<SeleccionarUsuarioPage>  {

  @override
  void initState() { 
    super.initState();
  }
  
  int _selectIndexPadre = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: FondoWidget(
          body: Center(
            child: _pagina1(context),
          ),
        )
      );
  }

  Widget _pagina1(BuildContext context) {
    return Column(
      children: [
        Container(
          //child: _crearBoton("Saltar")
          child: LogoReturnBannerWidget()
        ),
        SizedBox(height: 20.0,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          //child: _crearBoton("Saltar")
          child: Text("Selecciona entre estas dos opciones para tu perfil", 
                  style: TextStyle(color: Colors.white, fontSize: 22.0), textAlign: TextAlign.center,)
        ),
        SizedBox(height: 40.0,),
        Container(
          width: double.infinity,
          //child: _crearBoton("Saltar")
          child: _seleccionarPerfil(context)
        ),
        SizedBox(height: 20.0,),
        Container(
          //height: MediaQuery.of(context).size.height * 0.25,
          //child: _crearBoton("Saltar")
          child: BotonPrincipalWidget(tituloBoton: "SIGUIENTE", onPressed: () {
            Navigator.pushNamed(context, "iniciosesion", arguments: _selectIndexPadre);
          },),
        ),
      ],
    );
  }


  Widget _seleccionarPerfil(BuildContext context) {

    List<BotonSeleccion> lista = [
      new BotonSeleccion(descripcion: "Soy padre", id: 1),
    ];

    return BotonSeleccionWidget(
      botonSeleccionList: lista, 
      onChange: (val) {
          setState(() {
            _selectIndexPadre = val;
          });
      }, defaultSelectedIndex: 1,);
  }
}