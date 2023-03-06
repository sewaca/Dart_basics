extension Root on num {
  num pow(int degree) {
    if (degree == 0) return 1;
    if (degree < 0) return 1 / this.pow(degree * -1);

    num ans = this;
    while (degree > 1) {
      degree--;
      ans *= this;
    }
    return ans;
  }

  num root(int degree) {
    // print(this);
    // print(degree);
    // print(this.pow(degree));
    // print(this.pow(degree - 1));

    if (this < 0) {
      return throw Exception(
          "Невозможно извлечь корень из отрицательного числа");
    }

    num ans = this / degree;
    const double inaccuracy = 0.001; // Погрешность

    while ((ans.pow(degree) - this).abs() >= inaccuracy) {
      ans = (1 / degree) * ((degree - 1) * ans + (this / ans.pow(degree - 1)));
    }

    return ans;
  }
}
