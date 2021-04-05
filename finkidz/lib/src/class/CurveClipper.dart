import 'package:flutter/cupertino.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    
    Path path = new Path();
    
    path.moveTo(size.width/2, 0.0);
    path.lineTo(size.width, size.height/2);
    path.lineTo(size.width/2, (size.height * 2) / 2);
    path.lineTo(0.0, size.height / 2);
    //path.quadraticBezierTo(size.width / 2, size.height / 2, size.width / 2, size.height / 2);
    
    path.close();

    /*
    final Path path = Path();
    final double startMargin = size.width / 54;
    final double s1 = (size.height + 100) * 0.4;
    final double s2 = (size.height + 100) * 0.6;

    path.lineTo(startMargin, 0);
    path.lineTo(startMargin, s1);
    path.lineTo(0, size.height / 2);
    path.lineTo(startMargin, s2);
    path.lineTo(startMargin, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    */

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}