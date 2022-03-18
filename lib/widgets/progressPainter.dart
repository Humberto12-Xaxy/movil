import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practicas/Styles/colors_view.dart';

class ProgressPainter extends CustomPainter {
  ProgressPainter({required this.numerador});

  double numerador;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 6
      ..color = ColorSelect.txtBoSubHe
      ..style = PaintingStyle.stroke;

    Offset offset = Offset(size.width * 0.50, size.height * 0.50);
    final radio = size.height * 0.48;

    canvas.drawCircle(offset, radio, paint);

    final load = Paint()
      ..strokeWidth = 8
      ..color = ColorSelect.paginatorNext
      ..style = PaintingStyle.stroke;

    double porcentaje = pi * 2 * (numerador / 100.0);

    var rect = Rect.fromCircle(
      center: offset,
      radius: radio,
    );
    // Offset offset2 = Offset(size.width * 0.50, size.height * 0.50);
    canvas.drawArc(rect, -pi / 2, porcentaje, false, load);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
