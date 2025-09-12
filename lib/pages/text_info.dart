import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({
    super.key,
    required this.fontsize,
    required this.height,
    required this.text,
    required this.color,
    this.fontWeight,
  });

  final double fontsize;
  final double height;
  final FontWeight? fontWeight;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontsize,
        height: height,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
