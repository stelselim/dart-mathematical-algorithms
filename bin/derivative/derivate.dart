import 'package:math_expressions/math_expressions.dart';

num derivative(num point, String variable, String equation) {
  final x = Variable(variable);
  final parser = Parser();

  var eq = parser.parse(equation);
  final cm = ContextModel();
  cm.bindVariable(x, Number(point));

  var derived = eq.derive('$variable');

  //var simpleDerive = derived.simplify();
  //print('derived: $simpleDerive');

  var result = derived.evaluate(EvaluationType.REAL, cm);

  return result;
}
