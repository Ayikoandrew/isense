import 'package:flutter/material.dart';

class BuildDemoDashboard extends StatelessWidget {
  const BuildDemoDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(12),
          border: Border(),
        ),
      ),
    );
  }
}
