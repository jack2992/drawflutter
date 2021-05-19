import 'dart:ui';

import 'package:flutter/material.dart';

class ScreenPainterLine extends StatelessWidget {
  const ScreenPainterLine({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size =  MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Draw Lines'),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: CustomPaint(
          painter: AppPainter(),
        ),
      ),
    );
  }
}

class AppPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    paint.color = Colors.red;
    paint.strokeCap = StrokeCap.square;
    paint.strokeWidth = 1;
    //draw line on canvas
    _drawDashedLine(canvas, size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

  void _drawDashedLine(Canvas canvas, Size size, Paint paint) {
    // Change to your preferred size
    const int dashWidth = 4;
    const int dashSpace = 4;

    // Start to draw from left size.
    // Of course, you can change it to match your requirement.
    double startX = 0;
    double y = 10;

    // Repeat drawing until we reach the right edge.
    // In our example, size.with = 300 (from the SizedBox)
    while (startX < size.width) {
      // Draw a small line.
      canvas.drawLine(Offset(startX, y), Offset(startX + dashWidth, y), paint);

      // Update the starting X
      startX += dashWidth + dashSpace;
    }
  }
}
