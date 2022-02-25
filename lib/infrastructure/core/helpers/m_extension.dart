import 'dart:math';

extension Rd on double {
  double roundTo(int places) {
    final mod = pow(10.0, places);
    return ((this * mod).round().toDouble() / mod);
  }
}
