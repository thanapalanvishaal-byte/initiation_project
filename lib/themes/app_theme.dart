import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF7C3AED);
  static const Color secondary = Color(0xFF3B82F6);
  static const Color background = Color(0xFF0A0A12);
 
  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFB0B0B0);
  static const Color error = Color(0xFFDC3545);
}

class AppTextStyles {
  static const TextStyle heading1 = TextStyle(
    fontFamily: 'Orbitron',
    fontSize: 20,
    height: 28/20,
    letterSpacing: 1,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle heading2 = TextStyle(
    fontFamily: 'rajdhani',
    fontSize: 14,
    height: 22.7/14,
    
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle body = TextStyle(
    fontFamily: 'rajdhani',
    fontSize: 12,
    height: 16/12,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  static const TextStyle caption = TextStyle(
    fontFamily: 'rajdhani',
    fontSize: 12,
    height: 16/12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: Brightness.dark,
        primary: AppColors.primary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        foregroundColor: AppColors.textPrimary,
      ),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.heading1,
        headlineMedium: AppTextStyles.heading2,
        bodyLarge: AppTextStyles.body,
        bodySmall: AppTextStyles.caption,
      ),
    );
  }
}