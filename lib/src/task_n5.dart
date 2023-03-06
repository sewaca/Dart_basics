Iterable<int> findWordNumbers(String s) {
  Set<int> ans = {};

  s.split(", ").forEach((item) {
    switch (item) {
      case "zero":
        ans.add(0);
        break;
      case "one":
        ans.add(1);
        break;
      case "two":
        ans.add(2);
        break;
      case "three":
        ans.add(3);
        break;
      case "four":
        ans.add(4);
        break;
      case "five":
        ans.add(5);
        break;
      case "six":
        ans.add(6);
        break;
      case "seven":
        ans.add(7);
        break;
      case "eight":
        ans.add(8);
        break;
      case "nine":
        ans.add(9);
        break;
    }
  });

  return ans;
}
