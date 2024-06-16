import 'package:flutter/material.dart';

/// AppTextStyle format as follows:
/// [fontWeight][fontSize][colorName][opacity]
/// Example: bold18White05

class AppTextStyle {
  static const double _h5Size = 15.63;
  static const double _h6Size = 12.50;
  static const double _baseSize = 10.0;

  /// H5 Font
  static TextStyle h5Bold = const TextStyle(
    fontSize: _h5Size,
    fontWeight: FontWeight.bold,
  );
  static TextStyle h5SemiBold = const TextStyle(
    fontSize: _h5Size,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h5Medium = const TextStyle(
    fontSize: _h5Size,
    fontWeight: FontWeight.w500,
  );
  static TextStyle h5Regular = const TextStyle(
    fontSize: _h5Size,
    fontWeight: FontWeight.w400,
  );
  static TextStyle h5Light = const TextStyle(
    fontSize: _h5Size,
    fontWeight: FontWeight.w300,
  );

  /// H6 Font
  static TextStyle h6Bold = const TextStyle(
    fontSize: _h6Size,
    fontWeight: FontWeight.bold,
  );
  static TextStyle h6SemiBold = const TextStyle(
    fontSize: _h6Size,
    fontWeight: FontWeight.w600,
  );
  static TextStyle h6Medium = const TextStyle(
    fontSize: _h6Size,
    fontWeight: FontWeight.w500,
  );
  static TextStyle h6Regular = const TextStyle(
    fontSize: _h6Size,
    fontWeight: FontWeight.w400,
  );
  static TextStyle h6Light = const TextStyle(
    fontSize: _h6Size,
    fontWeight: FontWeight.w300,
  );

  /// Base Font
  static TextStyle baseBold = const TextStyle(
    fontSize: _baseSize,
    fontWeight: FontWeight.bold,
  );
  static TextStyle baseSemiBold = const TextStyle(
    fontSize: _baseSize,
    fontWeight: FontWeight.w600,
  );
  static TextStyle baseMedium = const TextStyle(
    fontSize: _baseSize,
    fontWeight: FontWeight.w500,
  );
  static TextStyle baseRegular = const TextStyle(
    fontSize: _baseSize,
    fontWeight: FontWeight.w400,
  );
  static TextStyle baseLight = const TextStyle(
    fontSize: _baseSize,
    fontWeight: FontWeight.w300,
  );
}
