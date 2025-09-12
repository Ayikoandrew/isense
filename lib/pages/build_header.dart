import 'package:dashboad/pages/text_info.dart';
import 'package:flutter/material.dart';

class BuildHeader extends StatelessWidget {
  const BuildHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.dashboard_customize_rounded,
                    size: 34,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'iSense',
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                ],
              ),
              Flexible(
                child: Wrap(
                  alignment: WrapAlignment.end,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    GestureDetector(child: _buildNavBar("Home")),
                    GestureDetector(child: _buildNavBar("Feature")),
                    GestureDetector(child: _buildNavBar("Pricing")),
                    GestureDetector(child: _buildNavBar("About")),

                    const SizedBox(width: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF0a2540),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(10),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 80),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF).withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
              border: BoxBorder.all(
                color: const Color(0xFFFFFFFF).withValues(alpha: 0.2),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.hotel_class_sharp, size: 16, color: Colors.white70),
                const SizedBox(width: 8),
                Text(
                  '2000+ businesses trust our platform',
                  style: TextStyle(color: Colors.white70, fontSize: 12),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          TextInfo(
            text:
                'AI powered business intelligence \nplatform that turns any business data into actionable predictions',
            fontsize: 36,
            height: 1.2,
            color: Colors.white,
          ),

          const SizedBox(height: 16),

          TextInfo(
            fontsize: 14,
            height: 1.3,
            color: Colors.grey.shade200,
            text:
                'Transform your business data into actionable insigts with AI-powered forecasting. \nEverything you need in one intuitive dashboard.',
          ),

          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0a2540),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Enter Dashboard', style: TextStyle(fontSize: 16)),
                    const SizedBox(width: 5),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(),
                ),
                onPressed: () {},
                child: Text('Learn more'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNavBar(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
