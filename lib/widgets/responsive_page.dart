import 'dart:ui';

import 'package:dashboad/pages/build_main_content.dart';
import 'package:dashboad/pages/build_nav_bar.dart';
import 'package:dashboad/pages/home_page.dart';
import 'package:dashboad/pages/text_info.dart';
import 'package:dashboad/pages/trusted_content.dart';
import 'package:dashboad/widgets/responsive_breakpoints.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context);
    final width = screenWidth.width;

    Widget responsiveContent(double width) {
      if (ResponsiveBreakpoints.isDesktop(width)) {
        return HomePage();
      }
      if (ResponsiveBreakpoints.isTablet(width)) {
        return HomePage();
      } else {
        return MobilePage();
      }
    }

    return responsiveContent(width);
  }
}

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF020617),
        foregroundColor: const Color(0xFFFFFFFF),
        title: Row(
          children: [
            Row(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.dashboard_customize_rounded,
                  size: 34,
                  color: Colors.white,
                ),
                Text(
                  'iSense',
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
      endDrawer: MobileHeader(),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
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
                    const SizedBox(height: 30),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
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
                          Icon(
                            Icons.hotel_class_sharp,
                            size: 16,
                            color: const Color(0xFFFA8E01),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '2000+ businesses trust our platform',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                            ),
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
                              Text(
                                'Enter Dashboard',
                                style: TextStyle(fontSize: 16),
                              ),
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

class MobileHeader extends StatelessWidget {
  const MobileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          spacing: 10,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 8,
              children: [
                Icon(
                  Icons.dashboard_customize_rounded,
                  size: 34,
                  color: Colors.white,
                ),
                Text(
                  'iSense',
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
              ],
            ),
            Text(
              'BI Platform',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                // height: 1.2,
              ),
            ),
            Text(
              'Analyze data anywere, fast and instantly.',
              style: TextStyle(color: Color(0xFFFFFFFF).withValues(alpha: 0.7)),
            ),
            Divider(thickness: 1, height: 1, color: Colors.grey.shade700),

            DrawerStyleMenu(word1: 'Home', word2: 'Feature'),
            DrawerStyleMenu(word1: 'Pricing', word2: 'About'),

            Divider(thickness: 1, height: 1, color: Colors.grey.shade700),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: Size(MediaQuery.widthOf(context), 5),
                backgroundColor: Color(0xFF0a2540),
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
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerStyleMenu extends StatelessWidget {
  const DrawerStyleMenu({super.key, required this.word1, required this.word2});
  final String word1;
  final String word2;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child: BuildNavBar(text: word1)),
        Expanded(child: BuildNavBar(text: word2)),
      ],
    );
  }
}
