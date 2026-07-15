import 'package:flutter/material.dart';
import 'package:info_app/core/theming/theming_colors.dart';

class ThemingTypography {
  ThemingTypography._();

  static final TextStyle bold20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle bold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ThemingColors.primaryColor,
  );
  static final TextStyle regular14 = TextStyle(
    fontSize: 14,
    color: ThemingColors.borderColor,
  );
}
