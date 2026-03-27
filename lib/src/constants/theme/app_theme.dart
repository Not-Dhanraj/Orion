import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static const _zeroShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.zero,
  );

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColorsLight.background,
      colorScheme: const ColorScheme.light(
        primary: AppColorsLight.primary,
        onPrimary: AppColorsLight.onPrimary,
        tertiary: AppColorsLight.onSurfaceVariant,
        surface: AppColorsLight.surface,
        onSurface: AppColorsLight.contentPrimary,
        onSurfaceVariant: AppColorsLight.onSurfaceVariant,
        surfaceContainerLowest: AppColorsLight.surfaceContainerLowest,
        surfaceContainerLow: AppColorsLight.surfaceContainerLow,
        surfaceContainer: AppColorsLight.surfaceContainer,
        surfaceContainerHigh: AppColorsLight.surfaceContainerHigh,
        surfaceContainerHighest: AppColorsLight.surfaceContainerHighest,
        outline: AppColorsLight.outline,
        outlineVariant: AppColorsLight.outlineVariant,
        error: AppColorsLight.red500,
        shadow: AppColorsLight.shadow,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurface,
          fontSize: 64,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurface,
          fontSize: 48,
          fontWeight: FontWeight.w900,
        ),
        displaySmall: GoogleFonts.jetBrainsMono(
          color: AppColorsLight.onSurface,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurface,
          fontSize: 32,
          fontWeight: FontWeight.w900,
        ),
        headlineMedium: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurface,
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
        headlineSmall: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurface,
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
        titleLarge: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurface,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.jetBrainsMono(
          color: AppColorsLight.onSurfaceVariant,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurface,
          fontSize: 16,
        ),
        bodyMedium: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurfaceVariant,
          fontSize: 14,
          height: 1.6,
        ),
        bodySmall: GoogleFonts.spaceGrotesk(
          color: AppColorsLight.onSurfaceVariant,
          fontSize: 12,
        ),
        labelLarge: GoogleFonts.jetBrainsMono(
          color: AppColorsLight.onSurface,
          fontSize: 14,
        ),
        labelMedium: GoogleFonts.jetBrainsMono(
          color: AppColorsLight.onSurfaceVariant,
          fontSize: 12,
        ),
        labelSmall: GoogleFonts.jetBrainsMono(
          color: AppColorsLight.outline,
          fontSize: 11,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColorsLight.primary,
          foregroundColor: AppColorsLight.onPrimary,
          elevation: 0,
          shape: _zeroShape,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: GoogleFonts.jetBrainsMono(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColorsLight.primary,
          side: BorderSide(
            color: AppColorsLight.outline.withValues(alpha: 0.4),
          ),
          shape: _zeroShape,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: GoogleFonts.jetBrainsMono(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColorsLight.onSurfaceVariant,
          shape: _zeroShape,
          backgroundColor: AppColorsLight.surfaceContainer,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: GoogleFonts.jetBrainsMono(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        isDense: true,
        contentPadding: const EdgeInsets.all(16),
        hintStyle: GoogleFonts.jetBrainsMono(
          fontSize: 14,
          color: AppColorsLight.onSurfaceVariant.withValues(alpha: 0.4),
        ),
      ),
      cardTheme: const CardThemeData(
        color: AppColorsLight.surfaceContainerLow,
        elevation: 0,
        shape: _zeroShape,
        margin: EdgeInsets.zero,
      ),
      dialogTheme: const DialogThemeData(
        backgroundColor: AppColorsLight.surfaceContainerHigh,
        elevation: 0,
        shape: _zeroShape,
      ),
      dividerTheme: DividerThemeData(
        color: AppColorsLight.outlineVariant.withValues(alpha: 0.2),
        thickness: 1,
        space: 1,
      ),
      iconTheme: const IconThemeData(color: AppColorsLight.onSurfaceVariant),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColorsLight.background,
        elevation: 0,
        scrolledUnderElevation: 0,
        foregroundColor: AppColorsLight.contentPrimary,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
        ),
      ),
      extensions: [
        StatusColors(
          success: AppColorsLight.green500,
          warning: AppColorsLight.yellow500,
          info: AppColorsLight.gray500,
        ),
      ],
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        onPrimary: AppColors.onPrimary,
        tertiary: AppColors.onSurfaceVariant,
        surface: AppColors.surface,
        onSurface: AppColors.contentPrimary,
        onSurfaceVariant: AppColors.onSurfaceVariant,
        surfaceContainerLowest: AppColors.surfaceContainerLowest,
        surfaceContainerLow: AppColors.surfaceContainerLow,
        surfaceContainer: AppColors.surfaceContainer,
        surfaceContainerHigh: AppColors.surfaceContainerHigh,
        surfaceContainerHighest: AppColors.surfaceContainerHighest,
        outline: AppColors.outline,
        outlineVariant: AppColors.outlineVariant,
        error: AppColors.red500,
        shadow: AppColors.shadow,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurface,
          fontSize: 64,
          fontWeight: FontWeight.w900,
        ),
        displayMedium: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurface,
          fontSize: 48,
          fontWeight: FontWeight.w900,
        ),
        displaySmall: GoogleFonts.jetBrainsMono(
          color: AppColors.onSurface,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
        headlineLarge: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurface,
          fontSize: 32,
          fontWeight: FontWeight.w900,
        ),
        headlineMedium: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurface,
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
        headlineSmall: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurface,
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
        titleLarge: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        titleMedium: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurface,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        titleSmall: GoogleFonts.jetBrainsMono(
          color: AppColors.onSurfaceVariant,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurface,
          fontSize: 16,
        ),
        bodyMedium: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurfaceVariant,
          fontSize: 14,
          height: 1.6,
        ),
        bodySmall: GoogleFonts.spaceGrotesk(
          color: AppColors.onSurfaceVariant,
          fontSize: 12,
        ),
        labelLarge: GoogleFonts.jetBrainsMono(
          color: AppColors.onSurface,
          fontSize: 14,
        ),
        labelMedium: GoogleFonts.jetBrainsMono(
          color: AppColors.onSurfaceVariant,
          fontSize: 12,
        ),
        labelSmall: GoogleFonts.jetBrainsMono(
          color: AppColors.outline,
          fontSize: 11,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          elevation: 0,
          shape: _zeroShape,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: GoogleFonts.jetBrainsMono(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: BorderSide(color: AppColors.outline.withValues(alpha: 0.4)),
          shape: _zeroShape,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: GoogleFonts.jetBrainsMono(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.onSurfaceVariant,
          shape: _zeroShape,
          backgroundColor: AppColors.surfaceContainer,
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: GoogleFonts.jetBrainsMono(
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: InputBorder.none,
        isDense: true,
        contentPadding: const EdgeInsets.all(16),
        hintStyle: GoogleFonts.jetBrainsMono(
          fontSize: 14,
          color: AppColors.onSurfaceVariant.withValues(alpha: 0.4),
        ),
      ),
      cardTheme: const CardThemeData(
        color: AppColors.surfaceContainerLow,
        elevation: 0,
        shape: _zeroShape,
        margin: EdgeInsets.zero,
      ),
      dialogTheme: const DialogThemeData(
        backgroundColor: AppColors.surfaceContainerHigh,
        elevation: 0,
        shape: _zeroShape,
      ),
      dividerTheme: DividerThemeData(
        color: AppColors.outlineVariant.withValues(alpha: 0.2),
        thickness: 1,
        space: 1,
      ),
      iconTheme: const IconThemeData(color: AppColors.onSurfaceVariant),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        scrolledUnderElevation: 0,
        foregroundColor: AppColors.contentPrimary,
      ),
      extensions: [
        StatusColors(
          success: AppColors.green500,
          warning: AppColors.yellow500,
          info: AppColors.gray500,
        ),
      ],
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
        ),
      ),
    );
  }
}

class StatusColors extends ThemeExtension<StatusColors> {
  final Color success;
  final Color warning;
  final Color info;

  const StatusColors({
    required this.success,
    required this.warning,
    required this.info,
  });

  @override
  StatusColors copyWith({Color? success, Color? warning, Color? info}) {
    return StatusColors(
      success: success ?? this.success,
      warning: warning ?? this.warning,
      info: info ?? this.info,
    );
  }

  @override
  StatusColors lerp(ThemeExtension<StatusColors>? other, double t) {
    if (other is! StatusColors) return this;
    return StatusColors(
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      info: Color.lerp(info, other.info, t)!,
    );
  }
}
