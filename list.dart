import 'dart:developer';
import 'dart:math';

void main() {
  List<int> numbers = [5, 3, 15, 4, 1];
  print(fliter(numbers, 10));
  print(findOdd(numbers));

  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }

  print(sum);

  int max = 0;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
    print(max);
  }
}

List<int> fliter(List<int> ages, int minAge) {
  List<int> filterAges = ages.where((element) => element > minAge).toList();
  return filterAges;
}

int findOdd(List<int> numbers) {
  int first = numbers.firstWhere(
    (element) => element.isOdd,
    orElse: () {
      return 0;
    },
  );
  return first;
}
