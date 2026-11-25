// ignore_for_file: avoid_print

// Run with: dart run bin/dart_basics.dart
void main() {
  // Variables and types
  var count = 3;
  final String name = 'Flutter';
  const double version = 3.47;
  bool isFun = true;
  count = count + 1;
  print(count);

  // String interpolation
  print('Hello, $name!');
  print('$name $version is fun: $isFun');
  print('Double: ${count * 2}');

  // Functions
  print(add(2, 3));
  print(square(4));
  greet(name: 'Ann');
  greet(name: 'Bob', times: 2);
}

int add(int a, int b) {
  return a + b;
}

int square(int x) => x * x;

void greet({required String name, int times = 1}) {
  for (var i = 0; i < times; i++) {
    print('Hi, $name');
  }
}
