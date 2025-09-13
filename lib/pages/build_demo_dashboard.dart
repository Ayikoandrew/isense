import 'package:flutter/material.dart';

class BuildDemoDashboard extends StatelessWidget {
  const BuildDemoDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF0a2540),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          border: Border(),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Logo(),
                  DummySearch(size: size),
                  ShowStatus(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DummySearch extends StatelessWidget {
  const DummySearch({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size / 2,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF).withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFFFFFFF).withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        spacing: 8,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search,
            size: 12,
            color: const Color(0xFFFFFFFF).withValues(alpha: 0.1),
          ),
          Text('Search', style: TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }
}

class ShowStatus extends StatelessWidget {
  const ShowStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6.0,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.circle, size: 8, color: Color(0xFF4CAF50)),
        Text(
          'LIVE',
          style: TextStyle(color: const Color(0xFF4CAF50), fontSize: 12),
        ),
      ],
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.0,
      children: [
        Icon(Icons.dashboard_customize_rounded, size: 34, color: Colors.white),
        Text('iSense', style: TextStyle(color: Colors.white70, fontSize: 20)),
      ],
    );
  }
}
