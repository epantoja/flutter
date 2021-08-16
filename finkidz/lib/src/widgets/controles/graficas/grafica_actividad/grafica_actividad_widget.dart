
import 'package:charts_flutter/flutter.dart'  as charts;
import 'package:finkidz/src/models/pie_data_model.dart';
import 'package:flutter/material.dart';

class GraficaActividadesWidget extends StatefulWidget {
  GraficaActividadesWidget({Key key}) : super(key: key);

  @override
  _GraficaActividadesWidgetState createState() => _GraficaActividadesWidgetState();
}

class _GraficaActividadesWidgetState extends State<GraficaActividadesWidget> {

  List<charts.Series<PieData, String>> _pieData;

  @override void initState() {
  super.initState();
    _pieData = [];
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: size.height * 0.069,
          left: size.width * 0.109,
          child: Text("72%", style: TextStyle(color: Colors.white),),
        ),
        charts.PieChart(
          generateData(),
          animate: false,
          animationDuration: Duration(seconds: 5),
          defaultRenderer: charts.ArcRendererConfig(
            arcWidth: 10,
            arcRendererDecorators: [
              charts.ArcLabelDecorator(
                labelPosition: charts.ArcLabelPosition.inside,
                showLeaderLines: false
              )
            ],
          )
        ),
      ],
    );
  }

  generateData() {
    var piedata = [
      new PieData('Completadas', 72.0, charts.ColorUtil.fromDartColor(Colors.yellow[700])),
      new PieData('Sin Completar', 28.0, charts.ColorUtil.fromDartColor(Colors.yellow[200])),
    ];
    
    _pieData.add(
      charts.Series(
        domainFn: (PieData data, _) => data.activity,
        measureFn: (PieData data, _) => data.time,
        colorFn: (PieData data, _) => data.color,
        id: 'Time spent',
        data: piedata,
        //labelAccessorFn: (PieData row, _) => '${row.activity}',
      ), 
    );

    return _pieData;
  }
}

