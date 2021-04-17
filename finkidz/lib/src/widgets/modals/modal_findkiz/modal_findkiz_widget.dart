import 'package:finkidz/src/widgets/controles/boton_principal/boton_principal_widget.dart';
import 'package:flutter/material.dart';

class ModalFindkizWidget extends StatefulWidget {

  final String rutaImagen;
  final String mensaje;
  final String textoBoton;

  ModalFindkizWidget({@required this.mensaje, @required this.rutaImagen, @required this.textoBoton});

  @override
  _ModalFindkizWidgetState createState() => _ModalFindkizWidgetState();
}

class _ModalFindkizWidgetState extends State<ModalFindkizWidget> {

  String _rutaImagen;
  String _mensaje;
  String _textoBoton;

  @override
  void initState() {
    _rutaImagen = widget.rutaImagen;
    _mensaje = widget.mensaje;
    _textoBoton = widget.textoBoton;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      child: Stack(
        children: [
            Container(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0, 
                bottom: 40.0
              ),
              margin: EdgeInsets.only(top: 45.0),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Color.fromRGBO(255, 246, 201, 1.0),
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(color: Colors.black45,offset: Offset(0,5),
                  blurRadius: 10
                  ),
                ]
              ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: 60.0
                    ),
                    child: Image(
                      image: AssetImage(_rutaImagen),
                      width: 120.0,
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(_mensaje,  style: TextStyle(color: Colors.black54, fontSize: 14.0), textAlign: TextAlign.center)
                  ),
                  SizedBox(height: 30.0,),
                  Container(
                    child: BotonPrincipalWidget(tituloBoton: _textoBoton, onPressed: () {
                        Navigator.of(context).pop();
                      },),
                  ),
              ]
            ),
          ),
          Positioned(
            right: 0.0,
            top: 15.0,
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 35.0,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    child: Image.asset("assets/img/icono_cerrar.png")
                ),
              ),
            ),
        ),
        ],
      )
    );
  }

}