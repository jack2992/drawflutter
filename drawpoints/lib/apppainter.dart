import 'dart:ui';

import 'package:flutter/material.dart';

class AppPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xff63aa65);
    paint.strokeCap = StrokeCap.round; //rounded points
    paint.strokeWidth = 10;
    //list of points
    var points = [
      Offset(50, 50),
      Offset(80, 70),
      Offset(380, 175),
      Offset(200, 175),
      Offset(150, 105),
      Offset(300, 75),
      Offset(320, 200),
      Offset(89, 125)
    ];
    //draw points on canvas
    canvas.drawPoints(PointMode.points, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
