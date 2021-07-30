import 'package:flutter/material.dart';

import '../constants.dart';

class RightArrow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint brush = Paint()
      ..color = kAccentColorPurple
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.0;

    canvas.drawLine(
      Offset(size.width * 0.9, size.height * 0.9),
      Offset(size.width * 0.9, size.height * 1.09),
      brush,
    );
    canvas.drawLine(
      Offset(size.width * 0.8, size.height * 1.0),
      Offset(size.width * 0.9, size.height * 1.09),
      brush,
    );
    canvas.drawLine(
      Offset(size.width * 1.0, size.height * 1.0),
      Offset(size.width * 0.9, size.height * 1.09),
      brush,
    );
  }

  @override
  bool shouldRepaint(RightArrow oldDelegate) => false;
}
