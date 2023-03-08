import 'dart:math';

class Task1 {
  int nod(int a, int b) {
    if (a <= 0 || b <= 0) {
      return throw Exception(
          "Функции nod и nok работают только с натуральными числами");
    }

    while (b > 0) {
      int buf = a;
      a = b;
      b = buf % a;
    }

    return a;
  }

  int nok(int a, int b) {
    if (a <= 0 || b <= 0) {
      return throw Exception(
          "Функции nod и nok работают только с натуральными числами");
    }

    return (a * b) ~/ nod(a, b);
  }

  List<int> decomposeIntoPrime(int n) {
    if (n == 0) return [];
    
    List<int> ans = [1];

    int maxPrime = sqrt(n.abs()).toInt() + 1;
    for (int i = 2; i <= maxPrime; i++) {
      while (n % i == 0) {
        ans.add(i);
        n ~/= i;
      }
    }

    return ans.length > 1 ? ans : [1, n];
  }
}
