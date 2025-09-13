import 'package:dashboad/pages/build_header.dart';
import 'package:dashboad/pages/build_main_content.dart';
import 'package:dashboad/pages/trusted_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0a0a0a),
                    Color(0xFF111827),
                    Color(0xFF0f172a),
                    Color(0xFF1e293b),
                    Color(0xFF020617),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    BuildHeader(),

                    SizedBox(height: 600, child: BuildMainContent()),

                    TrustedContent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
