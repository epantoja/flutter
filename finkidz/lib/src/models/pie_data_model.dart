import 'package:charts_flutter/flutter.dart' as charts; 
class PieData {
  String activity;
  double time;
  charts.Color color;
  PieData(
    this.activity, 
    this.time,
    this.color
  );
}