import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:practicas/Styles/colors_view.dart';
import 'dart:ui' as ui;

import '../Pages/on_boarding.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ui.Image? image;

  @override
  void initState() {
    super.initState();
    _loadImage('assets/img/splash.png');
    _toOnBording();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(
            painter: _splashCanvas(image),
          ),
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }

  _toOnBording() async {
    await Future.delayed(const Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnBoarding(),
        ));
  }

  void _loadImage(String url) async {
    final data = await rootBundle.load(url);
    final bytes = data.buffer.asUint8List();
    final img = await decodeImageFromList(bytes);
    setState(() {
      image = img;
    });
  }
}

class _splashCanvas extends CustomPainter {
  final ui.Image? image;

  _splashCanvas(this.image);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = ColorSelect.btnBackgroundBo2;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();
    path.lineTo(0, size.height * 0.1);

    path.quadraticBezierTo(size.width * 0.20, size.height * 0.17,
        size.width * 0.35, size.height * 0.13);

    path.quadraticBezierTo(size.width * 0.55, size.height * 0.07,
        size.width * 0.8, size.height * 0.1);
    path.quadraticBezierTo(
        size.width * 0.98, size.height * 0.13, size.width, size.height * 0.12);

    path.lineTo(size.width, 0);

    path.moveTo(0, size.height);

    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.80, size.width, size.height);

    canvas.drawPath(path, paint);
    canvas.scale(0.24, 0.24);

    canvas.drawImage(image!, const Offset(180 * 2.5, 450 * 3), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
