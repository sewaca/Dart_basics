Iterable<num> findNumbersInString(String s) {
  List<num> ans = [];

  s.split(" ").forEach((item) {
    if (num.tryParse(item) != null) {
      ans.add(num.parse(item));
    }
  });

  return ans;
}
