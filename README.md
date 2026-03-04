# human_readable_number

**Author:** Siddharth Khore  
GitHub: https://github.com/sidkhore1002  

[![pub package](https://img.shields.io/pub/v/human_readable_number.svg)](https://pub.dev/packages/human_readable_number)
[![GitHub stars](https://img.shields.io/github/stars/sidkhore1002/human_readable_number.svg)](https://github.com/sidkhore1002/human_readable_number)

A simple Dart package to convert numbers into human-readable formats like `1.2K`, `1L`, `2Cr`.

## ✨ Features

- ✅ Pure Dart (no dependencies)
- ✅ Supports large numbers
- ✅ Indian & International formats
- ✅ Custom decimal precision
- ✅ Trim trailing zeros
- ✅ Works on all platforms (Flutter, Web, Desktop)

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  human_readable_number: ^1.0.2
  
## Usage
```dart
import 'package:human_readable_number/human_readable_number.dart';

void main() {
  print(humanReadableNumber(1200)); // 1.2K
}