import 'package:flutter/material.dart';

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    // Draw first curved line
    final path1 = Path()
      ..moveTo(size.width * 0.25, size.height * 0.5)
      ..quadraticBezierTo(size.width * 0.5, 0, size.width * 0.75, size.height * 0.5)
      ..quadraticBezierTo(size.width * 0.5, size.height, size.width * 0.25, size.height * 0.5);

    canvas.drawPath(path1, paint);

    // Draw second curved line
    final path2 = Path()
      ..moveTo(size.width * 0.75, size.height * 0.5)
      ..quadraticBezierTo(size.width * 0.5, size.height, size.width * 0.25, size.height * 0.5)
      ..quadraticBezierTo(size.width * 0.5, 0, size.width * 0.75, size.height * 0.5);

    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
