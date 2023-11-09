import 'dart:ui';

import 'package:flutter/material.dart';

class Config {
  static final colors = AppColors();
  static final strings = AppStrings();
  static final icons = AppIcons();
}

class AppColors {
  final primary = const Color(0xFF6200EE);
  final primaryVariant = const Color(0xFF3700B3);
  final secondary = const Color(0xFF03DAC5);
  final secondaryVariant = const Color(0xFF018786);
}

class AppStrings {
  final appName = 'Note Keeper';
}

class AppIcons {
  final add = const Icon(Icons.add);
}
