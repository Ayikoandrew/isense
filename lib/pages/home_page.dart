import 'package:dashboad/pages/build_header.dart';
import 'package:dashboad/pages/build_main_content.dart';
import 'package:dashboad/pages/client_company.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BuildHeader(),

                      SizedBox(height: 600, child: BuildMainContent()),

                      _trustedContent(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _trustedContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          Text(
            'Trusted by 2000+ businesses',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              color: const Color(0xFFFFFFFF),
              textBaseline: TextBaseline.alphabetic,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClientCompany(icon: Icons.abc, name: 'Aburn Inc.'),
                ClientCompany(icon: Icons.hotel, name: "Grand Vista Hotels"),
                ClientCompany(
                  icon: Icons.apartment,
                  name: "Urban Stay Resorts",
                ),
                ClientCompany(
                  icon: Icons.location_city,
                  name: "Lakeside Lodges",
                ),
                ClientCompany(
                  icon: Icons.business,
                  name: "Metropolitan Suites",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
