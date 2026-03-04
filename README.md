# human_readable_number

A lightweight Dart package to convert numbers into human-readable format like 1.2K, 1L, 1Cr.

## Usage

```dart
import 'package:human_readable_number/human_readable_number.dart';

print(humanReadableNumber(1200));
print(humanReadableNumber(100000, indianFormat: true));