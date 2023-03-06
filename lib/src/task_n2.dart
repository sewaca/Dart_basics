import 'dart:math';

class Task2 {
  String fromDecimalToBinary(int num) {
    String ans = "";
    while (num > 0) {
      ans += (num % 2).toString();
      num ~/= 2;
    }

    return ans.isNotEmpty ? ans.split("").reversed.join("") : "0";
  }

  int fromBinaryToDecimal(String s) {
    int ans = 0;
    for (int i = s.length - 1; i >= 0; i--) {
      ans += int.parse(s[i]) * pow(2, s.length - i - 1).toInt();
    }
    return ans;
  }
}
