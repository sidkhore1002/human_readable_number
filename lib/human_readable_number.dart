library human_readable_number;

/// Converts a number into a human-readable format.
///
/// Examples:
/// ```dart
/// humanReadableNumber(1200); // 1.2K
/// humanReadableNumber(100000, indianFormat: true); // 1L
/// ```
///
/// [value] is the number to format.
/// Set [indianFormat] to true for Indian numbering system.
String humanReadableNumber(
  num value, {
  int decimals = 1,
  bool trimTrailingZeros = true,
  bool indianFormat = false,
}) {
  if (value == 0) return "0";

  final absValue = value.abs();
  double formatted = value.toDouble();
  String suffix = "";

  if (indianFormat) {
    if (absValue >= 1e7) {
      formatted = value / 1e7;
      suffix = "Cr";
    } else if (absValue >= 1e5) {
      formatted = value / 1e5;
      suffix = "L";
    } else if (absValue >= 1e3) {
      formatted = value / 1e3;
      suffix = "K";
    } else {
      return value.toString();
    }
  } else {
    if (absValue >= 1e12) {
      formatted = value / 1e12;
      suffix = "T";
    } else if (absValue >= 1e9) {
      formatted = value / 1e9;
      suffix = "B";
    } else if (absValue >= 1e6) {
      formatted = value / 1e6;
      suffix = "M";
    } else if (absValue >= 1e3) {
      formatted = value / 1e3;
      suffix = "K";
    } else {
      return value.toString();
    }
  }

  String result = formatted.toStringAsFixed(decimals);

  if (trimTrailingZeros) {
    result = result.replaceAll(RegExp(r'\.?0+$'), '');
  }

  return "$result$suffix";
}
