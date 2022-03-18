// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Styles/colors_view.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Image.asset(image, width: 290, height: 290),
        Text(
          title,
          style: const TextStyle(
              color: ColorSelect.txtBoHe,
              fontSize: 21,
              fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, color: ColorSelect.txtBoSubHe),
          ),
        )
      ],
    );
  }
}
