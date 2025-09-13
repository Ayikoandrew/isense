import 'package:flutter/material.dart';

class BuildNavBar extends StatelessWidget {
  const BuildNavBar({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w200,
          color: Colors.white,
        ),
      ),
    );
  }
}
