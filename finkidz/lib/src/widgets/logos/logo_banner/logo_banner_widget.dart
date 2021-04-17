import 'package:flutter/material.dart';

class LogoBannerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage('assets/img/logo_app.png'),
        width: 210.0,
      ),
    );
  }
}