Map<String, int> amountOfWords(List<String> words) {
  Map<String, int> ans = {};

  for (int i = 0; i < words.length; i++) {
    ans[words[i]] = ans[words[i]] != null ? ans[words[i]]! + 1 : 1;
  }

  return ans;
}
