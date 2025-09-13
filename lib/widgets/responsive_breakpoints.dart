class ResponsiveBreakpoints {
  static double get mobile => 600;
  static double get tablet => 1200;

  static bool isMobile(double width) => width <= mobile;
  static bool isTablet(double width) => width >= mobile && width < tablet;
  static bool isDesktop(double width) => width >= tablet;
}
