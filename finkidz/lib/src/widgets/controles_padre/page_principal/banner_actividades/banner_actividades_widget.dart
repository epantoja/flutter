
import 'package:finkidz/src/widgets/controles/graficas/grafica_actividad/grafica_actividad_widget.dart';
import 'package:flutter/material.dart';

class BannerActividadesWidget extends StatefulWidget {
  BannerActividadesWidget({Key key}) : super(key: key);

  @override
  _BannerActividadesWidgetState createState() => _BannerActividadesWidgetState();
}

class _BannerActividadesWidgetState extends State<BannerActividadesWidget> {
  
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.16,
      margin: EdgeInsets.symmetric(
        horizontal: 10.0
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(153, 68, 195, 1.0),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.4), 
            blurRadius: 20.0, 
            offset: Offset(4, 8),
            spreadRadius: 1.0,
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: size.width * 0.3,
            child: _grafica(),
          ),
          Container(
            width: size.width * 0.50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _titulo(),
                SizedBox(height: 15.0,),
                _puntaje()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _grafica() {
    return GraficaActividadesWidget();
  }

  Widget _titulo() {
    return Text("Actividades", style: TextStyle(color: Colors.white, fontSize: 25), );
  }

  Widget _puntaje() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage("assets/img/icono_actividades.png"),
          width: 50.0,
          fit: BoxFit.fill,
        ),
        SizedBox(width: 15.0,),
        Text("10/30", style: TextStyle(color: Colors.white, fontSize: 20), )
      ],
    );
  }


}