// https://leetcode.com/problems/fibonacci-number/description/
void main(List<String> args) {
  print(fib(0));
  print(fib(1));
  print(fib(2));
  print(fib(3));
  print(fib(5));
}
// dùng đệ quy
int fib(int n) {
  if (n <= 1) { // nếu n <= 1 thì trả về chính nó
    return n;
  } else {
    return fib(n - 1) + fib(n - 2);
  }
}
