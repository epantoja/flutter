import 'package:flutter/material.dart';

class BennerPadreWidget extends StatelessWidget {

  final String tituloBanner;
  final String nombreUsuario;
  final String rutaImagen;

  const BennerPadreWidget({this.nombreUsuario, this.tituloBanner, @required this.rutaImagen, Key key}) 
        : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          _metodoImagenFondo(size),
          _metodoTitulos(size),
          _metodoImagenPerfil(size)
        ],
      ),
    );
  }

  Widget _metodoImagenFondo(Size size) {
    return Container(
      height: size.height * 0.16,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.4), 
            blurRadius: 20.0, 
            offset: Offset(4, 8),
            spreadRadius: 1.0,
          ),
        ],
        image: DecorationImage(
          image: AssetImage("assets/img/bloque_nombre_usuario.png"),
          fit: BoxFit.fill,
        )
      ),
    );
  }

  Widget _metodoTitulos(Size size) {
    return Positioned(
      top: 20.0,
      left: 40.0,
      child: Container(
        width: 190.0,
        child: Column(
          children: [
            Text(tituloBanner != null ? tituloBanner: "", style: TextStyle(color: Colors.white, fontSize: 20.0),),
            Text(nombreUsuario != null ? nombreUsuario: "", style: TextStyle(color: Colors.white, fontSize: 40.0), overflow: TextOverflow.ellipsis,)
          ],
        ),
      ),
    );
  }

  Widget _metodoImagenPerfil(Size size) {
    return Positioned(
      top: 25.0,
      right: 30.0,
      child: CircleAvatar(
        backgroundImage: NetworkImage(rutaImagen),
        radius: 35,
        child: Container(
          decoration: BoxDecoration(
          shape: BoxShape.circle,
            border: Border.all(
              color: Colors.yellow,
              width: 4.0
            ),
          ),
        )//Text
      )
    );
  }
}