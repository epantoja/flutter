import 'package:finkidz/src/models/hijo_model.dart';
import 'package:flutter/material.dart';

class ListaHijosWidget extends StatefulWidget {
  final String titulo;
  final String tituloIcono;
  final List<HijoModel> hijos;

  ListaHijosWidget({this.titulo, this.tituloIcono, @required this.hijos, Key key}) : super(key: key);

  @override
  _ListaHijosWidgetState createState() => _ListaHijosWidgetState();
}

class _ListaHijosWidgetState extends State<ListaHijosWidget> {

  String _titulo;
  String _tituloIcono;
  List<HijoModel> _hijos;

  @override
  void initState() { 
    super.initState();
    _titulo = widget.titulo;
    _tituloIcono = widget.tituloIcono;
    _hijos = widget.hijos;
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        _metodoTitulo(),
        SizedBox(height: 10.0,),
        _tarjetas()
      ],
    );
  }

  Widget _metodoTitulo() {
    return Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 0.0,
              right: 80.0
            ),
            child: Text(_titulo != null ? _titulo : "", style: TextStyle(color: Color.fromRGBO(55, 130, 152, 1.0), fontSize: 22.0),),
          ),
          _iconoAgregarHijo()
        ],
      ),
    );
  }

  Widget _iconoAgregarHijo() {
    return Container(
      child: Row(
        children: [
          Image(
            image: AssetImage('assets/img/icono_agregar_hijo.png'),
            width: 50.0,
          ),
          Text(_tituloIcono != null ? _tituloIcono : "", style: TextStyle(color: Colors.black45, fontSize: 12.0)),
        ],
      ),
    );
  }

  Widget _tarjetas() {
    return Container(            
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 20.0, 
            offset: Offset(0, 0),
            spreadRadius: 0.5,
          ),
        ]
      ),
      width: double.infinity,
      height: 100.0,
      child: PageView(
        controller:  PageController(
            viewportFraction: 0.8,
            initialPage: 0,
        ),
        children: _listaTarjetas(),
      ),
    );
  }

  List<Widget> _listaTarjetas() {
    List<Widget> listaTarjeta = [];

    for(int i = 0; i < _hijos.length; i++){
      listaTarjeta.add(_tarjeta(_hijos[i]));
    }

    return listaTarjeta;
  }

  Widget _tarjeta(HijoModel hijo) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _metodoImagenPerfilHijo(size, hijo),
          _metodoNombreHijo(size, hijo),
          _metodoPuntajeHijo(size, hijo)
        ],
      ),
    );
  }

  Widget _metodoImagenPerfilHijo(Size size, HijoModel hijo) {
    return Container(
      width: size.width * 0.12,
      margin: EdgeInsets.only(
        left: 10.0,
      ),
      child: CircleAvatar(
        backgroundImage: NetworkImage(hijo.rutaImagen),
        radius: 30,
        child: Container(
          decoration: BoxDecoration(
          shape: BoxShape.circle,
            border: Border.all(
              color: Colors.yellow,
              width: 3.0
            ),
          ),
        )
      ),
    );
  }

  Widget _metodoNombreHijo(Size size, HijoModel hijo) {
    return Container(
      width: size.width * 0.28,
      alignment: Alignment.center,
      height: double.infinity,
      child: Text(hijo.nombre, style: TextStyle(fontSize: 14.0), textAlign: TextAlign.center, overflow: TextOverflow.ellipsis,),
    );
  }

  Widget _metodoPuntajeHijo(Size size, HijoModel hijo) {
    return Container(
      width: size.width * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 100.0,
            height: 50.0,
            child: Stack(
              children: [
                Positioned(
                  left: 18.0,
                  top: 16.0,
                  child: Image(
                    image: AssetImage("assets/img/boton_amarillo.png"),
                    width: 65.0,
                  ),
                ),
                Positioned(
                  top: 8.0,
                  child: Image(
                    image: AssetImage("assets/img/icono_cambio_hecho_modal.png"),
                    width: 40.0,
                  ),
                ),
                Positioned(
                  left: 40.0,
                  top: 22.0,
                  child: Text(hijo.puntaje.toString(), style: TextStyle(fontSize: 12.0, color: Colors.white),),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Ver Actividades", style: TextStyle(fontSize: 11.0, decoration: TextDecoration.underline, color: Colors.blueAccent),),
          )
        ],
      ),
    );
  }

}