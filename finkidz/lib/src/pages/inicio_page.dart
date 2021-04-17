
import 'package:flutter/material.dart';

class InicioPage extends StatefulWidget {
  InicioPage({Key key}) : super(key: key);

  @override
  _InicioPageState createState() => _InicioPageState();
}

class _InicioPageState extends State<InicioPage> {

  @override
  void initState() { 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: PageView(
          children: [
            //_pagina1(),
            _pagina2(context),
            _pagina3(context),
            _pagina4(context),
          ],
          pageSnapping: true,
        ),
      )
    );
  }

  /*
  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(255, 217, 22, 1.0)),
        _agregarLogoPag1()
      ],
    );
  }
  */

  Widget _pagina2(BuildContext context) {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(255, 192, 0, 1.0)),
        _colorFondoInferior(Color.fromRGBO(255, 217, 22, 1.0)),
        _cuerpoPagina2(context)
      ],
    );
  }

  Widget _pagina3(BuildContext context) {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(69, 193, 194, 1.0)),
        _colorFondoInferior(Color.fromRGBO(38, 183, 184, 1.0)),
        _cuerpoPagina3(context)
      ],
    );
  }

  Widget _pagina4(BuildContext context) {
    return Stack(
      children: [
        _colorFondo(Color.fromRGBO(153, 68, 195, 1.0)),
        _colorFondoInferior(Color.fromRGBO(137, 22, 194, 1.0)),
        _cuerpoPagina4(context)
      ],
    );
  }
  
  Widget _colorFondo(Color color) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color,
    );
  }

  Widget _colorFondoInferior(Color color) {
    return Positioned(
      bottom: 0.0,
      right: 0.0,
      left: 0.0,
      child: Container(
        width: 0,
        height: 500.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(450.0, 250.0),
          ),
          color: color
        ),
      ),
    );
  }

  /*
  Widget _agregarLogoPag1() {
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Container()
          ),
          Image(
            image: AssetImage('assets/img/logo_findkiz.png'),
            width: 300.0,
          ),
          SizedBox(height: 50.0,),
          Image(
            image: AssetImage('assets/img/logo_cargando.png'),
            width: 300.0,
          ),
          Expanded(
            child: Container()
          ),
        ],
      ),
    );
  }
  */

  Widget _cuerpoPagina2(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            //child: _crearBoton("Saltar")
            child: Container()
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            child:   _agregarLogoTexto(context, 0.0, 'assets/img/ilus_01.png',  Color.fromRGBO(120, 158, 104, 1.0), "PIDE TU DESEO", "DESEO", " Los deseos son aquellas recompensas que quieras alcanzar, tus padres tendrán la opción de darte tareas que denes completar para hacer realidad tu deseo."),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: _agregarPaginacion(1),
          ),
        ],
      ),
    );
  }

  Widget _cuerpoPagina3(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            //child: _crearBoton("Saltar")
            child: Container()
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            child:  _agregarLogoTexto(context, 40.0, 'assets/img/ilus_02.png',  Colors.yellow, "GANA ESTRELLAS", "ESTRELLAS", "A medida que cumples las actividades que tus padres te asignan ganarás estrellas las cuales te permitirán alcanzar el deseo que pediste a tus padres.")
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: _agregarPaginacion(2),
          ),
        ],
      ),
    );
  }

  Widget _cuerpoPagina4(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Container()
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            child:  _agregarLogoTexto(context, 0.0, 'assets/img/ilus_03.png', Color.fromRGBO(200, 240, 151, 1.0), "GENIAL", "!LO HICISTE!", "Una vez alcanzada la cantidad de estrellas necesarias tus padres te darán como recompensa el deseo que pediste.")
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _crearBotonPagina4(context, "Comenzar"),
                _agregarPaginacion(3)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _crearBotonPagina4(BuildContext context, String titulo) {
    
    return Container(
      padding: EdgeInsets.only(
        top: 20.0,
        left: 40.0
      ),
      alignment: Alignment.topLeft,
      child: SafeArea(
        child:  ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 10,
              shape:  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              onPrimary: Colors.white,
              primary: Color.fromRGBO(30, 221, 198, 1.0),
              
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: Text(titulo, style: TextStyle(fontSize: 18.0),),
            ),
            
            onPressed: () {
              Navigator.pushNamed(context, "seleccionusuario");
            },

          ),
      ),
    );
    
    /*
    return GestureDetector(
      child: Container(
       width:120,
       height: 40,
       decoration: BoxDecoration(
         color: Colors.black,
         image: DecorationImage(
           image:AssetImage("assets/img/boton_principal.png"), 
           fit:BoxFit.cover
         ),
       ),
       child: Text("clickMe") // button text
      ),onTap:(){
        print("you clicked me");
      }
    );
    */
  }

  Widget _agregarLogoTexto(BuildContext context, double height, String rutaImagen, Color color, String titulo, String subtitulo, String descripcion) {
    return Column(
        children: [
          SizedBox(height: height),
          Image(
            image: AssetImage(rutaImagen),
            width: MediaQuery.of(context).size.width * 0.65,
          ),
          Text(titulo, style: TextStyle(color: color, fontSize: 18.0, )),
          Text(subtitulo, style: TextStyle(color: color, fontSize: 50.0, )),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(descripcion, 
                    style: TextStyle(color: color, fontSize: 18.0, ), 
                    textAlign: TextAlign.center),
          ),
          
        ],
      );
  }

  Widget _agregarPaginacion(int index) {
    return Container(
      padding: EdgeInsets.only(right: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: index == 1 ? Colors.white.withOpacity(0.8): Colors.transparent,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.black26
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: index == 2 ? Colors.white.withOpacity(0.8): Colors.black12,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.black26
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
          ),
          SizedBox(width: 10.0,),
          Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: index == 3 ? Colors.white.withOpacity(0.8): Colors.black12,
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                color: Colors.black26
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}