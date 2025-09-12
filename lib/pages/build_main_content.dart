import 'package:dashboad/pages/build_demo_dashboard.dart';
import 'package:flutter/material.dart';

class BuildMainContent extends StatelessWidget {
  const BuildMainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: BuildDemoDashboard(),
    );
  }
}
