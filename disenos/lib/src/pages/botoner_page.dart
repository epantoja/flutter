import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titulos(),
                _botonesRedondeados()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _buttomNavigationBar(context)
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      ),
    );
    
    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Classify transaction", style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0,),
            Text("Classify this transaction into a particular category", style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _buttomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme
          .copyWith(caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))
      ), 
      child: BottomNavigationBar(
        /*
        backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
        selectedItemColor: Colors.pink,
        unselectedItemColor: Color.fromRGBO(116, 117, 152, 1.0),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        */
        items: [
          BottomNavigationBarItem (
            icon: Icon(Icons.calendar_today, size: 30.0),
            label: ""
          ),
          BottomNavigationBarItem (
            icon: Icon(Icons.pie_chart_outlined, size: 30.0),
            label: ""
          ),
          BottomNavigationBarItem (
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            label: "",
          )
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.account_box_sharp, 'Settings')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.brown, Icons.accessible, 'Photos'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.alarm_off, 'Alarm')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.greenAccent, Icons.music_off, 'Music'),
            _crearBotonRedondeado(Colors.redAccent, Icons.request_page_outlined, 'Page')
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.indigoAccent, Icons.outlet, 'Outlet'),
            _crearBotonRedondeado(Colors.cyanAccent, Icons.account_balance_wallet_outlined, 'Account')
          ]
        ),
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icon, String texto) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0
        ),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.70),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0),
              ),
              Text(texto, style: TextStyle(color: color),),
              SizedBox(height: 5.0,)
            ],
          ),
        ),
      ),
    );
  }


}