class Task1 {
  num nod(num a, num b) {
    return b > 0 ? nod(b, a % b) : a;
  }

  num nok(num a, num b) {
    return (a * b) ~/ nod(a, b);
  }
}
