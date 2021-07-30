import 'package:flutter/material.dart';

import '../constants.dart';

class CenterArrow extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint brush = Paint()
      ..color = kAccentColorPurple
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10.0;

    canvas.drawLine(
      Offset(size.width * 0.5, size.height * 1.0),
      Offset(size.width * 0.5, size.height * 1.19),
      brush,
    );
    canvas.drawLine(
      Offset(size.width * 0.6, size.height * 1.1),
      Offset(size.width * 0.5, size.height * 1.19),
      brush,
    );
    canvas.drawLine(
      Offset(size.width * 0.4, size.height * 1.1),
      Offset(size.width * 0.5, size.height * 1.19),
      brush,
    );
  }

  @override
  bool shouldRepaint(CenterArrow oldDelegate) => false;
}
