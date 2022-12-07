<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A collection of utilities used to manipulate dart colors.

## Features

- Lighten color
- Darken color
- Color space conversion from RGB to HSV

## Getting started

Add the package in your `pubspec.yaml` file.
```yaml
dependencies:
  color_fns:
    git:
      url: https://github.com/PhelixOchieng/color_fns.git
      ref: main
```

## Usage


```dart
import 'dart:ui';

import 'package:color_fns/color_fns.dart';

const color = Color(0x009E19DB);

final lighter = lighten(color, 0.1);
final darker = darken(color, 0.1)

// Or using the extensions
final lighterExt = color.lighten(0.1);
final darkerExt = color.darken(0.1);
```

## Additional information

### Contributing

To contribute to the package:

1. Fork the repo.
1. Branch from the `main` branch and create your feature branch.
1. Make your changes in your branch and commit them.
1. Create a pull request pointing to the `main` branch.
