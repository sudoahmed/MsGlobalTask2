import 'package:flutter/material.dart';

class PathPainter extends CustomPainter {
  @override
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height * 0.2517766);
    path0.quadraticBezierTo(size.width * 0.0024306, size.height * 0.2530457,
        size.width * 0.2083333, size.height * 0.4659898);
    path0.cubicTo(
        size.width * 0.2631944,
        size.height * 0.5411168,
        size.width * 0.3369861,
        size.height * 0.4919391,
        size.width * 0.3750000,
        size.height * 0.4771574);
    path0.quadraticBezierTo(size.width * 0.9820139, size.height * 0.2161320,
        size.width, size.height * 0.2091371);
    path0.lineTo(size.width, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
