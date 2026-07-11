import 'package:flutter/material.dart';

class BBColors {
  static const rg3 = Color(0xFFC9956C);
  static const rg4 = Color(0xFFD4A574);
  static const rg5 = Color(0xFFE8C4A0);
  static const wh = Color(0xFFF5F0EB);
  static const mu = Color(0xFFB8AFAF);
  static const bg = Color(0xFF000000);
  static const card = Color(0xFF141110);
}

class AppTheme {
  static ThemeData get theme {
    final base = ThemeData.dark(useMaterial3: true);
    return base.copyWith(
      scaffoldBackgroundColor: BBColors.bg,
      colorScheme: base.colorScheme.copyWith(
        primary: BBColors.rg4,
        secondary: BBColors.rg5,
        surface: BBColors.bg,
      ),
      fontFamily: 'JosefinSans',
      textTheme: base.textTheme
          .apply(
            fontFamily: 'JosefinSans',
            bodyColor: BBColors.wh,
            displayColor: BBColors.wh,
          )
          .copyWith(
            headlineLarge: const TextStyle(
              fontFamily: 'EBGaramond',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              fontSize: 34,
              color: BBColors.wh,
              height: 1.25,
            ),
            headlineMedium: const TextStyle(
              fontFamily: 'EBGaramond',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              fontSize: 26,
              color: BBColors.wh,
              height: 1.3,
            ),
            titleMedium: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              letterSpacing: 0.8,
              color: BBColors.wh,
            ),
            bodyMedium: const TextStyle(
              fontSize: 14.5,
              color: BBColors.mu,
              height: 1.7,
              letterSpacing: 0.2,
            ),
            labelLarge: const TextStyle(
              fontSize: 11,
              letterSpacing: 2.5,
              color: BBColors.rg4,
              fontWeight: FontWeight.w600,
            ),
          ),
      dividerColor: BBColors.rg4.withOpacity(0.25),
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: const Color(0xFF0A0807),
        indicatorColor: BBColors.rg4.withOpacity(0.18),
        labelTextStyle: WidgetStateProperty.all(
          const TextStyle(fontSize: 11, letterSpacing: 1, color: BBColors.wh),
        ),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return IconThemeData(
            color: selected ? BBColors.rg4 : BBColors.mu,
          );
        }),
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: const Color(0xFF0A0807),
        selectedIconTheme: const IconThemeData(color: BBColors.rg4),
        unselectedIconTheme: const IconThemeData(color: BBColors.mu),
        selectedLabelTextStyle: const TextStyle(color: BBColors.rg4, fontSize: 12),
        unselectedLabelTextStyle: const TextStyle(color: BBColors.mu, fontSize: 12),
      ),
    );
  }
}
