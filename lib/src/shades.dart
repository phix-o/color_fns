import 'dart:ui';
import 'dart:math';

import 'colors.dart';

HSLColor rgbToHSL(Color color) {
  final r = color.red / 255;
  final g = color.green / 255;
  final b = color.blue / 255;

  final cMax = max(r, max(g, b));
  final cMin = min(r, min(g, b));
  final delta = cMax - cMin;

  late final double h;
  if (cMax == r) {
    h = 60 * (((g - b) / delta) % 6);
  } else if (cMax == g) {
    h = 60 * (((b - r) / delta) + 2);
  } else {
    h = 60 * (((r - g) / delta) + 4);
  }

  final double l = (cMax + cMin) / 2;

  late final double s;
  if (delta == 0) {
    s = 0;
  } else {
    s = delta / (1 - (2 * l - 1).abs());
  }

  return HSLColor(h, s, l);
}

Color lighten(Color color, double amount) {
  final hslColor = rgbToHSL(color);

  final newLum = min(1, hslColor.lum + amount).toDouble();
  final brightenedHslColor = hslColor.copyWith(lum: newLum);

  return brightenedHslColor.toRGB();
}

Color darken(Color color, double amount) {
  final hslColor = rgbToHSL(color);

  final newLum = max(0, hslColor.lum - amount).toDouble();
  final brightenedHslColor = hslColor.copyWith(lum: newLum);

  return brightenedHslColor.toRGB();
}
