import 'package:finkidz/src/models/actividad_model.dart';
import 'package:finkidz/src/widgets/controles_padre/page_principal/actividades/item_actividad.dart';
import 'package:flutter/material.dart';

class ListaActividadesWidget extends StatefulWidget {

  final List<ActividadModel> listaActividad;
  final String titulo;

  ListaActividadesWidget({this.titulo, @required this.listaActividad, Key key}) : super(key: key);

  @override
  _ListaActividadesWidgetState createState() => _ListaActividadesWidgetState();
}

class _ListaActividadesWidgetState extends State<ListaActividadesWidget> {

  String _titulo;
  List<ActividadModel> _listaActividad;

  @override
  void initState() { 
    super.initState();
    _titulo = widget.titulo;
    _listaActividad = widget.listaActividad;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _metodoTitulo(),
          SizedBox(height: 10.0,),
          _metodoVerTodo(),
          _metodoListaActividades()
        ],
      ),
    );
  }

  Widget _metodoTitulo() {
    return Container(
      padding: EdgeInsets.only(
        left: 20.0
      ),
      alignment: Alignment.topLeft,
      child: Text(_titulo != null ? _titulo : "", style: TextStyle(color: Color.fromRGBO(55, 130, 152, 1.0), fontSize: 22.0),),
    );
  }

  Widget _metodoVerTodo() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: EdgeInsets.only(
          left: 10.0
        ),
        alignment: Alignment.topLeft,
        child: TextButton.icon(
          onPressed: () => {
          },
          label: Text(
            "Ver todos", style: TextStyle(color: Colors.black45, fontSize: 14.0),
          ),
          icon: Icon(Icons.arrow_back_ios_outlined, color: Colors.black45, size: 16.0,),
        ),
      ),
    ); 
  }

  Widget _metodoListaActividades() {
    List<Widget> listaWidget = [];
    _listaActividad.forEach((element) { 
      listaWidget.add(ItemActividadWidget(
        actividad: element,
      ));
    });
    return Container(
      height: 350.0,
      child: PageView(
        controller:  PageController(
            viewportFraction: 0.3,
            initialPage: 1,
            keepPage: false
        ),
        pageSnapping: false,
        scrollDirection: Axis.vertical,
        children: listaWidget
      ),
    );
  }

}