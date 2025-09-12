import 'package:flutter/material.dart';

class ClientCompany extends StatelessWidget {
  const ClientCompany({super.key, required this.icon, required this.name});
  final IconData icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 32, color: const Color(0xFFFFFFFF)),
          const SizedBox(width: 3),
          Text(
            name,
            style: TextStyle(fontSize: 24, color: const Color(0xFF9E9E9E)),
          ),
        ],
      ),
    );
  }
}
