# 03 Dart basics: variables and functions

中文：[README.md](README.md)

<!-- video -->
**Video**: [Bilibili](https://www.bilibili.com/video/BV1pgyqzTEqz) · [YouTube](https://youtu.be/YQgRRX8JGNA)
<!-- /video -->

**Code**: [start](start) | [final](final)

> This lesson only adds `bin/dart_basics.dart`; the app code doesn't change. No memorizing: just read and use it.

## Goals

- Tell var, final, and const apart: which can change and which can't
- Know a few common types and use string interpolation
- Read function signatures, especially named parameters and required

## 1 Variables and types

A variable gives a value a name. Dart has three common ways to declare one:

- `var`: can change later;
- `final`: set once;
- `const`: fixed when you write the code.

When in doubt, start with `final`. You can write the type before the name, like `String`, `double`, `bool`; leave it out and Dart infers it.

Create `bin/dart_basics.dart`. The first-line comment tells the linter that `print` is fine in this file.

```dart
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
```

No app here: run Dart code directly in the terminal:

```powershell
dart run bin/dart_basics.dart
```

## 2 String interpolation

To put a value in a string, use `$` and the name; for a calculation, wrap it in `${...}`. Flutter uses this to show numbers.

```dart
  // String interpolation
  print('Hello, $name!');
  print('$name $version is fun: $isFun');
  print('Double: ${count * 2}');
```

## 3 Functions and named parameters

Functions have two kinds of parameters:

- **positional**: passed in order;
- **named**: in braces, and you write their names when calling. `required` means you must pass it; one with a default can be left out.

```dart
int add(int a, int b) {
  return a + b;
}

int square(int x) => x * x;

void greet({required String name, int times = 1}) {
  for (var i = 0; i < times; i++) {
    print('Hi, $name');
  }
}
```

`add` is the full form; a one-line function can use the arrow shorthand, like `square`. Calling them:

```dart
  // Functions
  print(add(2, 3));
  print(square(4));
  greet(name: 'Ann');
  greet(name: 'Bob', times: 2);
```

`name: 'Ann'` makes the meaning obvious, which is why Flutter uses named parameters everywhere.

<!-- img: terminal.png — the output of dart_basics.dart in the terminal -->

## 4 Back to Flutter code

Back in `lib/main.dart`, here's what we just learned. `MyHomePage`'s constructor uses a named parameter, and `title` is required:

```dart
  const MyHomePage({super.key, required this.title});
```

So creating the home page means writing `title:` and the text:

```dart
      home: const MyHomePage(title: 'Hello, Flutter!'),
```

## Summary

- var can change, final is set once, const is fixed
- Use `$name` and `${expression}` to put values in strings
- Named parameters go in braces; required ones must be passed

## Key terms

| English | 中文 |
|---|---|
| variable | 变量 |
| type | 类型 |
| string interpolation | 字符串插值 |
| function | 函数 |
| named parameter | 命名参数 |
| arrow function | 箭头函数 |

## Ask AI

> Write a Dart function greet with named parameters: name is required, times defaults to 1, and it prints a greeting that many times.

## Exercises

1. Add another named parameter `punctuation` to `greet`, defaulting to `'!'`.
