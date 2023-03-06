/// Функция для вычисления интеграла Риманна
/// * fn - функция, определяющая зависимость y от x
/// * x1 - левая граница интегрирования
/// * x2 - правая граница интегрирования
/// * accuracy - количество отрезков, на которые разбивается интервал [x1, x2]
num rimanIntegral(num Function(num) fn, num x1, num x2, num accuracy) {
  if (x1 > x2) {
    num buf = x2;
    x2 = x1;
    x1 = buf;
  }

  num ans = 0;
  final num delta = (x2 - x1).abs() / accuracy;

  while (x1 < x2) {
    ans += fn(x1) * delta;
    x1 += delta;
  }

  return ans;
}
