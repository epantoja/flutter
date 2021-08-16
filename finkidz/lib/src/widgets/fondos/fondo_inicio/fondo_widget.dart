import 'package:flutter/material.dart';

class FondoWidget extends StatelessWidget {

  final Widget body;

  FondoWidget({@required this.body});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
          _colorFondo(Color.fromRGBO(255, 217, 22, 1.0)),
          SafeArea(
            child: Center(
              child: Container(
                constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img/bg1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Scaffold(
                  //resizeToAvoidBottomInset: false,
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:  body,
                    ),
                  ),
                )
              ),
            ),
        ),
      ],
    );
  }
}

Widget _colorFondo(Color color) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: color,
    );
}



