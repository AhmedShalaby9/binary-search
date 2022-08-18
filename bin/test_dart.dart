void main() {
  // binary search
  List<int> list = [2, 4, 6, 8, 9, 10, 18, 20, 40, 42];
  print(binarySearch(list, 6));

  print(binarySearch(list, 40));
  print(binarySearch(list, 20));
}

String binarySearch(List<int> list, x) {
  int min = 0;
  int max = list.length - 1;
  while (min <= max) {
    int mid = ((min + max) / 2).floor();
    if (x == list[mid]) {
      return "selected item found in index $mid";
    } else if (x > list[mid]) {
      min = mid + 1;
    } else if (x < list[mid]) {
      max = mid - 1;
    } else {
      return "selected item found in index $mid";
    }
  }
  return "not found";
}
