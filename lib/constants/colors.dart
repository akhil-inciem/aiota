import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors{
  static const Color primaryBackground = Color(0xFFF0F2FA);
  static const Color primaryColor = Color(0xFF015FC9);
  static const Color secondaryColor = Color(0xFF06B6D4);
  static const Color textColor = Color(0xFF1E40AF);
  // Gradient Colors
  static const List<Color> primaryGradient = [
    Color(0xFF1E40AF), // Dark Blue
    Color(0xFF06B6D4), // Light Blue
  ];

  static const LinearGradient border = LinearGradient(
    colors: [primaryColor, secondaryColor],
  );

  static const LinearGradient divider = LinearGradient(
    colors: [primaryColor, secondaryColor],
  );

}