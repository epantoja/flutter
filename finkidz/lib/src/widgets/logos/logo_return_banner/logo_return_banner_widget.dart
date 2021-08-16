import 'package:flutter/material.dart';

class LogoReturnBannerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            alignment: Alignment.topLeft,
            child: Image(
              image: AssetImage('assets/img/boton_regresar.png'),
              width: 80.0,
            ),
          ),
        ),
        Container(
          child: Image(
            image: AssetImage('assets/img/logo_app.png'),
            width: 210.0,
          ),
        ),
      ],
    );
  }
}