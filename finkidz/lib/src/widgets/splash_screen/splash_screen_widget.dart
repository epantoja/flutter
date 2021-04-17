import 'dart:async';
import 'package:flutter/material.dart';


class SplashWidget extends StatefulWidget {
  @override
  VideoState createState() => VideoState();
}

class VideoState extends State<SplashWidget> with SingleTickerProviderStateMixin{

  var _visible = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    /*
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => InicioPage()));
    */
    Navigator.of(context).pushNamedAndRemoveUntil('inicio', (Route<dynamic> route) => false);
    
  }

  @override
  void initState() {
    super.initState();



    animationController =  AnimationController(
        vsync: this, duration:  Duration(seconds: 2));
    
    animation =  CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 217, 22, 1.0),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child:new Image.asset('assets/img/logo_app.png',height: 25.0,fit: BoxFit.scaleDown,)
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/img/logo_app.png',
                width: animation.value * 250,
                height: animation.value * 250,
                //width: 250,
                //height: 250,
              ),

            ],
          ),
        ],
      ),
    );
  }
}