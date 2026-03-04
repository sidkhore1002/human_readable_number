import 'package:flutter_test/flutter_test.dart';
import 'package:human_readable_number/human_readable_number.dart';

void main() {
  test('Standard format', () {
    expect(humanReadableNumber(1200), '1.2K');
    expect(humanReadableNumber(1500000), '1.5M');
  });

  test('Indian format', () {
    expect(humanReadableNumber(100000, indianFormat: true), '1L');
    expect(humanReadableNumber(10000000, indianFormat: true), '1Cr');
  });
}
