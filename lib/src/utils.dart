import 'dart:ui';

/// Converts a [hex] string to a [Color]
///
/// [hex] must start with "#" followed by either 3, 6 or 8
/// colors
Color colorFromHex(String hex) {
  assert(hex[0] == '#', 'First character must be a "#" symbol');

  final colorString = hex.substring(1);
  final colorStringCount = colorString.length;
  assert(
    colorStringCount == 3 || colorStringCount == 6 || colorStringCount == 8,
    'The "#" symbol can only be followed by either 3, 6 or 8 characters.',
  );

  late int r;
  late int g;
  late int b;
  int alpha = 255;
  if (colorStringCount == 3) {
    r = int.parse(colorString[0] * 2, radix: 16);
    g = int.parse(colorString[1] * 2, radix: 16);
    b = int.parse(colorString[2] * 2, radix: 16);
  } else if (colorStringCount == 6) {
    r = int.parse(colorString.substring(0, 2), radix: 16);
    g = int.parse(colorString.substring(2, 4), radix: 16);
    b = int.parse(colorString.substring(4, 6), radix: 16);
  } else {
    r = int.parse(colorString.substring(0, 2), radix: 16);
    g = int.parse(colorString.substring(2, 4), radix: 16);
    b = int.parse(colorString.substring(4, 6), radix: 16);

    alpha = int.parse(colorString.substring(6, 8), radix: 16);
  }

  return Color.fromARGB(alpha, r, g, b);
}

String colorToHex(Color color) {
  String r = color.red.toRadixString(16);
  String g = color.green.toRadixString(16);
  String b = color.green.toRadixString(16);
  String o = color.alpha.toRadixString(16);

  if (r.length == 1) r = "${r}0";
  if (g.length == 1) g = "${g}0";
  if (b.length == 1) b = "${b}0";
  if (o.length == 1) o = "${o}0";

  return '#$r$g$b$o'.toUpperCase();
}
