import 'package:flutter/material.dart';

class TextStylesCustom {
  static TextStylesCustom? _instance;

  TextStylesCustom._();

  static TextStylesCustom get i {
    _instance ??= TextStylesCustom._();
    return _instance!;
  }

  String get font => 'Montserrat';

  TextStyle get textLight => TextStyle(fontWeight: FontWeight.w300, fontFamily: font);

  TextStyle get textRegular => TextStyle(fontWeight: FontWeight.normal, fontFamily: font);

  TextStyle get textMedium => TextStyle(fontWeight: FontWeight.w500, fontFamily: font);

  TextStyle get textBold => TextStyle(fontWeight: FontWeight.bold, fontFamily: font);

  TextStyle get textExtraBold => TextStyle(fontWeight: FontWeight.w800, fontFamily: font);

  TextStyle get textButtonLabel => textBold.copyWith(fontSize: 14);

  TextStyle get textTitle => textExtraBold.copyWith(fontSize: 28);
}

extension TextStylesExtension on BuildContext {
  TextStylesCustom get textStyles => TextStylesCustom.i;
}
