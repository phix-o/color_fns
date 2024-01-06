import 'dart:ui';

import 'colors.dart';
import 'shades.dart' as shades;
import 'utils.dart' as utils;

extension Shades on Color {
  Color lighten(double amount) => shades.lighten(this, amount);
  Color darken(double amount) => shades.darken(this, amount);
}

extension Convertions on Color {
  String toHex() => utils.colorToHex(this);
  HSLColor toHSL() => shades.rgbToHSL(this);
}
