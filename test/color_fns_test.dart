import 'dart:ui';

import 'package:color_fns/src/utils.dart';
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

  test('creates a Color from 3-char hex string', () {
    const hex = "#FF0";
    const expectedColor = Color(0xFFFFFF00);

    expect(colorFromHex(hex), expectedColor);
  });

  test('creates a Color from 6-char hex string', () {
    const hex = "#FF0000";
    const expectedColor = Color(0xFFFF0000);

    expect(colorFromHex(hex), expectedColor);
  });

  test('creates a Color from 8-char hex string', () {
    const hex = "#FF0000A0";
    const expectedColor = Color(0xA0FF0000);

    expect(colorFromHex(hex), expectedColor);
  });

  test('converts Color to hex', () {
    const color = Color(0xFFFF0000);
    const expectedHex = '#FF0000FF';

    expect(colorToHex(color), expectedHex);
  });
}
