import 'package:finkidz/src/models/actividad_model.dart';
import 'package:flutter/material.dart';

class ItemActividadWidget extends StatefulWidget {

  final ActividadModel actividad;

  ItemActividadWidget({@required this.actividad, Key key}) : super(key: key);

  @override
  _ItemActividadWidgetState createState() => _ItemActividadWidgetState();
}

class _ItemActividadWidgetState extends State<ItemActividadWidget> {

  ActividadModel _actividad;

  @override
  void initState() { 
    super.initState();
    _actividad = widget.actividad;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          _metodoImagenFondo(size),
          _metodoCuerpoActividad(size)
        ],
      ),
    );
  }

  Widget _metodoImagenFondo(Size size) {

    return Image(
      image:  AssetImage("assets/img/card_gestionar_actividades.png"),
      height: size.height * 0.16,
      fit: BoxFit.fill,
    );
  }

  Widget _metodoCuerpoActividad(Size size) {
    return Row(
      children: [
        _metodoImagenIzquierda(size),
        _metodoDescipcionActividad(size),
        _metodoPuntajeActividad(size)
      ],
    );
  }

  Widget _metodoImagenIzquierda(Size size) {
    return Image(
      image: AssetImage('assets/img/${_actividad.rutaLogo}'),
      height: size.height * 0.12,
      fit: BoxFit.fill,
    );
  }

  Widget _metodoDescipcionActividad(Size size) {
    return Container(
      width: size.width * 0.32,
      height: size.height * 0.12,
      padding: EdgeInsets.only(
        left: 5.0,
        right: 5.0
      ),
      alignment: Alignment.center,
      child: Text(_actividad.descripcionActividad, style: TextStyle(color: Colors.black54),),
    );
  }

  Widget _metodoPuntajeActividad(Size size) {
    return Container(
      width: size.width * 0.32,
      height: size.height * 0.12,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _metodoPuntaje(size),
          Container(
            alignment: Alignment.center,
            height: size.height * 0.051,
            width: double.infinity,
            child: Stack(
              children: _metodoFotosPerfiles(),
            ),
          )
        ],
      ),
    );
  }

  Widget _metodoPuntaje(Size size) {
    return Container(
      height: size.height * 0.065,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 45.0,
            top: 12.0,
            child: Image(
              image: AssetImage("assets/img/boton_amarillo.png"),
              width: 65.0,
            ),
          ),
          Positioned(
            top: 4.0,
            left: 20.0,
            child: Image(
              image: AssetImage("assets/img/icono_cambio_hecho_modal.png"),
              width: 40.0,
            ),
          ),
          Positioned(
            left: 62.0,
            top: 18.0,
            child: Text(_actividad.puntaje.toString(), style: TextStyle(fontSize: 12.0, color: Colors.white),),
          ),
        ],
      ),
    );
  }

  List<Widget> _metodoFotosPerfiles() {
    List<Widget> lista =[];
    int index = 0;
    _actividad.hijoModel.forEach((element) { 
      index ++;
      lista.add(
        _metodoFoto(element.rutaImagen, index)
      );
    });

    return lista;
  }

  Widget _metodoFoto(String rutaImage, int index) {
    return Positioned(
      left: 16.0 * index,
      child: CircleAvatar(
        backgroundImage: NetworkImage(rutaImage),
        radius: 13.0,
        child: Container(
          decoration: BoxDecoration(
          shape: BoxShape.circle,
            border: Border.all(
              color: Colors.yellow,
              width: 2.0
            ),
          ),
        ),
      ),
    );
  }

}