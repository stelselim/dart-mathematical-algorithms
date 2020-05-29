import 'package:math_expressions/math_expressions.dart';

/// Integral Simpson Metod


num integration(
    num start, num end, String variable, String equation,
    {var step = 500}) {
  final x = Variable('$variable');
  final parser = Parser();

  var eq = parser.parse(equation);
  var n = step;
  var delta = (end - start) / n;

  final cm = ContextModel();
  num total = 0;

  for (var i = 0; i < n + 1; i++) {
    var variableValue = start + i * delta;
    final _value = Number(variableValue);
    var multiply = 1;

    /// First & Last term coefficients 1
    /// Odd coefficients 4
    /// Even coefficients 2
    if (i == 0 || i == n) {
      multiply = 1;
    } else if (i % 2 == 1) {
      multiply = 4;
    } else if (i % 2 == 0) {
      multiply = 2;
    }
    cm.bindVariable(x, _value);
    var result = multiply * eq.evaluate(EvaluationType.REAL, cm);
    total += result;
  }

  var deltaOver3 = (delta / 3);

  return (deltaOver3 * total);
}
