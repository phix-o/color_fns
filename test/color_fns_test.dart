import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

import 'package:color_fns/color_fns.dart';

void main() {
  test('lightens a color by a given amount', () {
    const color = Color(0xFF00FF00);
    const expectedColor = Color(0xFF99FF99);

    expect(color.lighten(0.3), expectedColor);
    expect(lighten(color, 0.3), expectedColor);
  });

  test('darkens a color by a given amount', () {
    const color = Color(0xFF00FF00);
    const expectedColor = Color(0xFF006600);

    expect(color.darken(0.3), expectedColor);
    expect(darken(color, 0.3), expectedColor);
  });

  test('converts a color to hsl', () {
    const color = Color(0xFF00FF00);
    const expectedColor = HSLColor(120, 1, 0.5);

    expect(color.toHSL(), expectedColor);
    expect(rgbToHSL(color), expectedColor);
  });
}
