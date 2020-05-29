import 'dart:math';

num radiansToDegree(double radians) {
  /// Degree Calculations
  /// radians =  1°'degrees'  * (π / 180)
  var degree = radians * (180 / pi);
  return degree;
}
