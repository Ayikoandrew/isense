import 'package:dashboad/pages/client_company.dart';
import 'package:flutter/material.dart';

class TrustedContent extends StatelessWidget {
  const TrustedContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        spacing: 10,
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
