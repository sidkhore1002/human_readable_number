// ignore_for_file: avoid_print

import 'package:human_readable_number/human_readable_number.dart';

void main() {
  print(humanReadableNumber(1200));
  print(humanReadableNumber(1500000));
  print(humanReadableNumber(100000, indianFormat: true));
}
