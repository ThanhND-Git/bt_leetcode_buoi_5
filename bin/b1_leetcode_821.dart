// https://leetcode.com/problems/shortest-distance-to-a-character/description/
import 'dart:math';

void main(List<String> args) {
  print(shortestToChar("loveleetcode", "e"));
  print(shortestToChar("aaab", "b"));
}

List<int> shortestToChar(String s, String c) {
  int n = s.length;
  List<int> result = List.filled(n, 0);
  // [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  // 
  int first = n + 1; // 13 or 5
  int last = n + 1;

  for (int i = 0, j = n - 1; i < n; i++, j--) { // i chạy từ đầu mảng, j chạy từ cuối mảng
    if (s[i] == c) {
      first = 0;
    }

    if (s[j] == c) {
      last = 0;
    }

    if (i < j) {
      result[i] = first++ ;
      result[j] = last++ ;
    } else if (i == j) {
      result[i] = min(first++, last++);
    } else {
      result[i] = min(first++, result[i]);
      result[j] = min(last++, result[j]);
    }
  }

  return result;
}
