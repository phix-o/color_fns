import 'dart:ui';

import 'package:equatable/equatable.dart';

class HSLColor extends Equatable {
  const HSLColor(this.hue, this.sat, this.lum);

  final double hue;
  final double sat;
  final double lum;

  Color toRGBA(double opacity) {
    final c = (1 - (2 * lum - 1).abs()) * sat;
    final x = c * (1 - ((hue / 60) % 2 - 1).abs());
    final m = lum - c / 2;

    List<double> primes = [0, 0, 0];
    if (0 <= hue && hue <= 60) {
      primes = [c, x, 0];
    } else if (60 <= hue && hue < 120) {
      primes = [x, c, 0];
    } else if (120 <= hue && hue < 180) {
      primes = [0, c, x];
    } else if (180 <= hue && hue < 240) {
      primes = [0, x, c];
    } else if (240 <= hue && hue < 300) {
      primes = [x, 0, c];
    } else if (300 <= hue && hue < 360) {
      primes = [c, 0, x];
    }

    final red = ((primes[0] + m) * 255).toInt();
    final green = ((primes[1] + m) * 255).toInt();
    final blue = ((primes[2] + m) * 255).toInt();

    return Color.fromRGBO(red, green, blue, opacity);
  }

  Color toRGB() {
    return toRGBA(1);
  }

  HSLColor copyWith({double? hue, double? sat, double? lum}) =>
      HSLColor(hue ?? this.hue, sat ?? this.sat, lum ?? this.lum);

  @override
  List<Object> get props => [hue, sat, lum];
}
