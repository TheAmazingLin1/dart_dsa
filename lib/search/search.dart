import 'dart:math';

void testSearch() {
  final arraySize = 100000000;
  final maxVal = 20000;
  final randomVal = Random().nextInt(maxVal);
  final array = <int>[
    for (int i = 0; i < arraySize; i++) Random().nextInt(maxVal + 1)
  ];
  final watch = Stopwatch();
  watch.start();
  final res = linearSearch(array, randomVal);
  watch.stop();
  print("time: ${watch.elapsedMicroseconds}");
}

bool linearSearch(List<int> list, int val) {
  for (int i = 0; i < list.length; i++) {
    if (list[i] == val) return true;
  }
  return false;
}
