// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? DarkModeTheme()
        : LightModeTheme();
  }

  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary;
  late Color secondary;
  late Color tertiary;
  late Color alternate;
  late Color primaryText;
  late Color secondaryText;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color accent1;
  late Color accent2;
  late Color accent3;
  late Color accent4;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;

  late Color accent5;
  late Color customColor2U;
  late Color customColor1U;
  late Color customColor3U;
  late Color gradientColor1;
  late Color gradientColor2;
  late Color gradientColor1a;
  late Color gradientColor2a;
  late Color gradientColor1b;
  late Color gradientColor2b;
  late Color customColor4;
  late Color customColor2;
  late Color customColor3;
  late Color mcg1;
  late Color mcg2;
  late Color mcgb1;
  late Color mcgb2;
  late Color customColor1;
  late Color customColor5;
  late Color customColor6;
  late Color customColor7;
  late Color customColor8;

  @Deprecated('Use displaySmallFamily instead')
  String get title1Family => displaySmallFamily;
  @Deprecated('Use displaySmall instead')
  TextStyle get title1 => typography.displaySmall;
  @Deprecated('Use headlineMediumFamily instead')
  String get title2Family => typography.headlineMediumFamily;
  @Deprecated('Use headlineMedium instead')
  TextStyle get title2 => typography.headlineMedium;
  @Deprecated('Use headlineSmallFamily instead')
  String get title3Family => typography.headlineSmallFamily;
  @Deprecated('Use headlineSmall instead')
  TextStyle get title3 => typography.headlineSmall;
  @Deprecated('Use titleMediumFamily instead')
  String get subtitle1Family => typography.titleMediumFamily;
  @Deprecated('Use titleMedium instead')
  TextStyle get subtitle1 => typography.titleMedium;
  @Deprecated('Use titleSmallFamily instead')
  String get subtitle2Family => typography.titleSmallFamily;
  @Deprecated('Use titleSmall instead')
  TextStyle get subtitle2 => typography.titleSmall;
  @Deprecated('Use bodyMediumFamily instead')
  String get bodyText1Family => typography.bodyMediumFamily;
  @Deprecated('Use bodyMedium instead')
  TextStyle get bodyText1 => typography.bodyMedium;
  @Deprecated('Use bodySmallFamily instead')
  String get bodyText2Family => typography.bodySmallFamily;
  @Deprecated('Use bodySmall instead')
  TextStyle get bodyText2 => typography.bodySmall;

  String get displayLargeFamily => typography.displayLargeFamily;
  TextStyle get displayLarge => typography.displayLarge;
  String get displayMediumFamily => typography.displayMediumFamily;
  TextStyle get displayMedium => typography.displayMedium;
  String get displaySmallFamily => typography.displaySmallFamily;
  TextStyle get displaySmall => typography.displaySmall;
  String get headlineLargeFamily => typography.headlineLargeFamily;
  TextStyle get headlineLarge => typography.headlineLarge;
  String get headlineMediumFamily => typography.headlineMediumFamily;
  TextStyle get headlineMedium => typography.headlineMedium;
  String get headlineSmallFamily => typography.headlineSmallFamily;
  TextStyle get headlineSmall => typography.headlineSmall;
  String get titleLargeFamily => typography.titleLargeFamily;
  TextStyle get titleLarge => typography.titleLarge;
  String get titleMediumFamily => typography.titleMediumFamily;
  TextStyle get titleMedium => typography.titleMedium;
  String get titleSmallFamily => typography.titleSmallFamily;
  TextStyle get titleSmall => typography.titleSmall;
  String get labelLargeFamily => typography.labelLargeFamily;
  TextStyle get labelLarge => typography.labelLarge;
  String get labelMediumFamily => typography.labelMediumFamily;
  TextStyle get labelMedium => typography.labelMedium;
  String get labelSmallFamily => typography.labelSmallFamily;
  TextStyle get labelSmall => typography.labelSmall;
  String get bodyLargeFamily => typography.bodyLargeFamily;
  TextStyle get bodyLarge => typography.bodyLarge;
  String get bodyMediumFamily => typography.bodyMediumFamily;
  TextStyle get bodyMedium => typography.bodyMedium;
  String get bodySmallFamily => typography.bodySmallFamily;
  TextStyle get bodySmall => typography.bodySmall;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFFFFFF);
  late Color secondary = const Color(0xFF676C77);
  late Color tertiary = const Color(0xFF1C1F25);
  late Color alternate = const Color(0xFF1C1F25);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xB0000000);
  late Color primaryBackground = const Color(0xFFEFF0F2);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color accent1 = const Color(0xFF50CAFF);
  late Color accent2 = const Color(0xFF1C1F25);
  late Color accent3 = const Color(0xFF000000);
  late Color accent4 = const Color(0xFFABAFB7);
  late Color success = const Color(0xFF02CA79);
  late Color warning = const Color(0xFFC96F46);
  late Color error = const Color(0xFFE65454);
  late Color info = const Color(0x5BC0C0C0);

  late Color accent5 = const Color(0xFF34A853);
  late Color customColor2U = const Color(0x4D314741);
  late Color customColor1U = const Color(0xFF4280F9);
  late Color customColor3U = const Color(0x4C313741);
  late Color gradientColor1 = const Color(0xA134A853);
  late Color gradientColor2 = const Color(0xFF0F7070);
  late Color gradientColor1a = const Color(0xA134A853);
  late Color gradientColor2a = const Color(0xFF0F7070);
  late Color gradientColor1b = const Color(0xFF476FFF);
  late Color gradientColor2b = const Color(0xFF31B0E6);
  late Color customColor4 = const Color(0xFF91B5BA);
  late Color customColor2 = const Color(0xFF6E69B9);
  late Color customColor3 = const Color(0xFF678795);
  late Color mcg1 = const Color(0xFFFFFFFF);
  late Color mcg2 = const Color(0xFFFFFFFF);
  late Color mcgb1 = const Color(0x6034A853);
  late Color mcgb2 = const Color(0x980F7070);
  late Color customColor1 = const Color(0xFFFFFFFF);
  late Color customColor5 = const Color(0xFFFFFFFF);
  late Color customColor6 = const Color(0x5A34A853);
  late Color customColor7 = const Color(0x8F0F7070);
  late Color customColor8 = const Color(0xFF8267B8);
}

abstract class Typography {
  String get displayLargeFamily;
  TextStyle get displayLarge;
  String get displayMediumFamily;
  TextStyle get displayMedium;
  String get displaySmallFamily;
  TextStyle get displaySmall;
  String get headlineLargeFamily;
  TextStyle get headlineLarge;
  String get headlineMediumFamily;
  TextStyle get headlineMedium;
  String get headlineSmallFamily;
  TextStyle get headlineSmall;
  String get titleLargeFamily;
  TextStyle get titleLarge;
  String get titleMediumFamily;
  TextStyle get titleMedium;
  String get titleSmallFamily;
  TextStyle get titleSmall;
  String get labelLargeFamily;
  TextStyle get labelLarge;
  String get labelMediumFamily;
  TextStyle get labelMedium;
  String get labelSmallFamily;
  TextStyle get labelSmall;
  String get bodyLargeFamily;
  TextStyle get bodyLarge;
  String get bodyMediumFamily;
  TextStyle get bodyMedium;
  String get bodySmallFamily;
  TextStyle get bodySmall;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get displayLargeFamily => 'Readex Pro';
  TextStyle get displayLarge => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 60.0,
      );
  String get displayMediumFamily => 'Readex Pro';
  TextStyle get displayMedium => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 45.0,
      );
  String get displaySmallFamily => 'Readex Pro';
  TextStyle get displaySmall => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get headlineLargeFamily => 'Readex Pro';
  TextStyle get headlineLarge => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 32.0,
      );
  String get headlineMediumFamily => 'Readex Pro';
  TextStyle get headlineMedium => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get headlineSmallFamily => 'Readex Pro';
  TextStyle get headlineSmall => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20.0,
      );
  String get titleLargeFamily => 'Readex Pro';
  TextStyle get titleLarge => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 22.0,
      );
  String get titleMediumFamily => 'Readex Pro';
  TextStyle get titleMedium => GoogleFonts.getFont(
        'Readex Pro',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 18.0,
      );
  String get titleSmallFamily => 'Inter';
  TextStyle get titleSmall => GoogleFonts.getFont(
        'Inter',
        color: theme.info,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelLargeFamily => 'Inter';
  TextStyle get labelLarge => GoogleFonts.getFont(
        'Inter',
        color: theme.secondaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get labelMediumFamily => 'Montserrat';
  TextStyle get labelMedium => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 32.0,
      );
  String get labelSmallFamily => 'Montserrat';
  TextStyle get labelSmall => GoogleFonts.getFont(
        'Montserrat',
        color: theme.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 24.0,
      );
  String get bodyLargeFamily => 'Montserrat';
  TextStyle get bodyLarge => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      );
  String get bodyMediumFamily => 'Montserrat';
  TextStyle get bodyMedium => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 16.0,
      );
  String get bodySmallFamily => 'Montserrat';
  TextStyle get bodySmall => GoogleFonts.getFont(
        'Montserrat',
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14.0,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  @Deprecated('Use primary instead')
  Color get primaryColor => primary;
  @Deprecated('Use secondary instead')
  Color get secondaryColor => secondary;
  @Deprecated('Use tertiary instead')
  Color get tertiaryColor => tertiary;

  late Color primary = const Color(0xFFFFFFFF);
  late Color secondary = const Color(0xFF8AC7FF);
  late Color tertiary = const Color(0xFFFFFFFF);
  late Color alternate = const Color(0xFF313741);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFFC3C7CF);
  late Color primaryBackground = const Color(0xFF1C1F25);
  late Color secondaryBackground = const Color(0xFF313741);
  late Color accent1 = const Color(0xFF50CAFF);
  late Color accent2 = const Color(0xFFFFFFFF);
  late Color accent3 = const Color(0xFFFFFFFF);
  late Color accent4 = const Color(0xFFC3C7CF);
  late Color success = const Color(0xFF02CA79);
  late Color warning = const Color(0xFFC96F46);
  late Color error = const Color(0xFFE65454);
  late Color info = const Color(0xFF565C67);

  late Color accent5 = const Color(0x45FFFFFF);
  late Color customColor2U = const Color(0xFF313741);
  late Color customColor1U = const Color(0xFFFFFFFF);
  late Color customColor3U = const Color(0xFFF9F9F9);
  late Color gradientColor1 = const Color(0x4E34A853);
  late Color gradientColor2 = const Color(0x4E476FFF);
  late Color gradientColor1a = const Color(0x7234A853);
  late Color gradientColor2a = const Color(0xB30F7070);
  late Color gradientColor1b = const Color(0xFFFFFFFF);
  late Color gradientColor2b = const Color(0xFFFFFFFF);
  late Color customColor4 = const Color(0xFF91B5BA);
  late Color customColor2 = const Color(0xFF6E69B9);
  late Color customColor3 = const Color(0xFF678795);
  late Color mcg1 = const Color(0xFF50CAFF);
  late Color mcg2 = const Color(0xED1C79D6);
  late Color mcgb1 = const Color(0x59FFFFFF);
  late Color mcgb2 = const Color(0x5CFFFFFF);
  late Color customColor1 = const Color(0x4F34A853);
  late Color customColor5 = const Color(0x4F476FFF);
  late Color customColor6 = const Color(0xA134A853);
  late Color customColor7 = const Color(0xFF0F7070);
  late Color customColor8 = const Color(0xFFFFFFFF);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
