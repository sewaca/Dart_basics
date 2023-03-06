int nod(int a, int b) {
  return b > 0 ? nod(b, a % b) : a;
}

int nok(int a, int b) {
  return (a * b) ~/ nod(a, b);
}
