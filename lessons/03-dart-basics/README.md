# 03 Dart：变量与函数

English: [README.en.md](README.en.md)

<!-- video -->
**视频**：[Bilibili](https://www.bilibili.com/video/BV1pgyqzTEqz) · [YouTube](https://youtu.be/YQgRRX8JGNA)
<!-- /video -->

**代码**：起点 [start](start) ｜ 完成 [final](final)

> 这一课只新增 `bin/dart_basics.dart`，App 代码不变。不用背，看懂、会用就行。

## 本课目标

- 分清 var、final、const：哪个能改，哪个不能改
- 认识几种常用类型，会用字符串插值（string interpolation）
- 读懂函数的写法，尤其是命名参数（named parameter）和 required

## 1 变量与类型

变量（variable）就是给一个值起个名字。Dart 里常见三种写法：

- `var`：之后还能改；
- `final`：只能赋值一次；
- `const`：写代码的时候值就已经定死了。

拿不准的时候，先用 `final`。类型（type）可以写在变量名前面，比如 `String`、`double`、`bool`；不写，Dart 会自己推断。

新建 `bin/dart_basics.dart`。第一行的注释告诉检查工具：这个文件可以用 `print`。

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

这里不跑 App，在终端里直接运行 Dart 代码：

```powershell
dart run bin/dart_basics.dart
```

## 2 字符串插值

想把值放进字符串，用 `$` 加变量名；如果是一段计算，用 `${...}` 包起来。Flutter 里显示数字全靠它。

```dart
  // String interpolation
  print('Hello, $name!');
  print('$name $version is fun: $isFun');
  print('Double: ${count * 2}');
```

## 3 函数与命名参数

函数（function）有两种参数：

- **位置参数**：按顺序传；
- **命名参数**：写在花括号里，调用时要写上名字。加了 `required` 就必须传；有默认值的可以不传。

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

`add` 是完整写法；只有一句的函数可以用箭头简写，比如 `square`。调用时：

```dart
  // Functions
  print(add(2, 3));
  print(square(4));
  greet(name: 'Ann');
  greet(name: 'Bob', times: 2);
```

`name: 'Ann'` 一看就知道这个值是什么意思，所以 Flutter 到处都在用命名参数。

<!-- img: terminal.png — 终端里运行 dart_basics.dart 的输出 -->

## 4 回到 Flutter 代码

回到 `lib/main.dart`，刚学的东西就在这里。`MyHomePage` 的构造函数用的就是命名参数，其中 `title` 是 required：

```dart
  const MyHomePage({super.key, required this.title});
```

所以创建首页的时候，要写 `title:` 再跟上标题：

```dart
      home: const MyHomePage(title: 'Hello, Flutter!'),
```

## 小结

- var 能改，final 只赋值一次，const 写死
- 字符串里用 `$name` 和 `${表达式}` 放进值
- 命名参数写在花括号里，required 就必须传

## 本课术语

| 中文 | English |
|---|---|
| 变量 | variable |
| 类型 | type |
| 字符串插值 | string interpolation |
| 函数 | function |
| 命名参数 | named parameter |
| 箭头函数 | arrow function |

## 让 AI 来做

> 写一个 Dart 函数 greet，用命名参数：name 必填，times 默认 1，按次数打印问候。

## 课后练习

1. 给 `greet` 再加一个命名参数 `punctuation`，默认值是 `'!'`。
