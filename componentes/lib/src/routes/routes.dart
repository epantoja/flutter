import 'package:flutter/material.dart';


import 'package:componentes/src/pages/inputs_page.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/animated_container_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {

  return <String, WidgetBuilder> {
    '/' : (BuildContext context) => HomePage(),
    'alert' : (BuildContext context) => AlertPage(),
    'avatar' : (BuildContext context) => AvatarPage(),
    'card' : (BuildContext context) => CardHome(),
    'animated' : (BuildContext context) => AnimatedContainerPage(),
    'inputs' : (BuildContext context) => InputsPage(),
    'slider' : (BuildContext context) => SliderPage(),
    'list' : (BuildContext context) => ListaPage(),
  };

}
