import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:practicas/Styles/colors_view.dart';
import 'package:practicas/widgets/progressPainter.dart';

class ProgressView extends StatefulWidget {
  const ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  double val = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cronometro();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.transparent,
          width: 200,
          height: 200,
          child: CustomPaint(
            painter: ProgressPainter(numerador: val),
          ),
        ),
      ),
    );
  }

  void _cronometro() {
    Timer.periodic(const Duration(milliseconds: 400), (timer) {
      if (val == 100) {
        Navigator.pushReplacementNamed(context, 'home');
        timer.cancel();
      } else {
        setState(() {
          val = val + 10.0;
        });
      }
    });
  }
}
