import 'dart:math' as Math;
import 'derivative/derivate.dart';
import 'integral/integration.dart';
import 'utilities/degreeToRadians.dart';

void main() {
  // var integ = integration(0, 180, 'x', 'sin(x)', step: 500);
  // var de = derivative(30, 'x', 'sin(5*x)');
  // print(integ);

  num degree = 30;
  final res = Math.sin(degreeToRadians(degree));
  print(res);
}
