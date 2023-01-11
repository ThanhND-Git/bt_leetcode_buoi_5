// https://leetcode.com/problems/n-repeated-element-in-size-2n-array/description/
void main(List<String> args) {
  print(repeatedNTimes([1, 2, 3, 3]));
  print(repeatedNTimes([2, 1, 2, 5, 3, 2]));
  print(repeatedNTimes([5, 1, 5, 2, 5, 3, 5, 4]));
}

int repeatedNTimes(List<int> nums) {
  int n = nums.length;
  nums.sort();
  for (int i = 0; i < n - 1; i++) {
    if (nums[i] == nums[i + 1]) { // kiểm tra hai phần tử liền nhau có bằng nhau hay không
      return nums[i];
    }
  }
  return 0;
}
