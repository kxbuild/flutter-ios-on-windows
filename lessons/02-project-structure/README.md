# 02 项目结构与入口

English: [README.en.md](README.en.md)

<!-- video -->
**视频**：[Bilibili](https://www.bilibili.com/video/BV1z3ydzEEn8) · [YouTube](https://youtu.be/UROCJV82VOI)
<!-- /video -->

**代码**：起点 [start](start) ｜ 完成 [final](final)

## 本课目标

- 知道 Flutter 工程里 lib、pubspec.yaml、ios、test 各放什么
- 能从 `main()` 一路读到屏幕上的界面：runApp → MaterialApp → Scaffold → AppBar
- 分清热重载（hot reload）和热重启（hot restart）

## 1 工程里有什么

| 位置 | 放什么 |
|---|---|
| `lib/` | 我们写的 Dart 代码，几乎都在这里 |
| `pubspec.yaml` | 项目配置：名字、版本和用到的包 |
| `ios/` | 生成好的 iOS 工程，编译和签名都靠它 |
| `test/` | 测试代码，第 33 课再讲 |
| `android/` | 安卓工程，这套课用不到 |

## 2 从 main 开始

每个 Dart 程序都从 `main` 函数开始。这里的 `main` 只做一件事：调用 `runApp`，把一个 Widget（组件）放到屏幕上。Widget 可以先理解成“界面上的一块”，第 4 课细讲。

```dart
void main() {
  runApp(const MyApp());
}
```

打开 `lib/main.dart`，先把模板里的大段英文注释删掉，然后顺着 `runApp` 往下读：

- `MyApp` 返回一个 **MaterialApp**，它是整个应用的外壳，管着主题和首页；
- `home` 指向首页 `MyHomePage`，标题是上一课改的 `Hello, Flutter!`；
- 首页最外层是 **Scaffold**，它给页面搭好了骨架：顶部的 AppBar、中间的 body、右下角的按钮。

```dart
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.teal)),
      home: const MyHomePage(title: 'Hello, Flutter!'),
```

`fromSeed` 前面只有一个点，这是一种简写，和写全 `ColorScheme.fromSeed` 是一样的。

## 3 改一下 AppBar

运行起来，对照手机看。把 AppBar 的背景色换成 `primary`，再加一行 `foregroundColor`，让标题文字变成白色（`onPrimary` 是配在 primary 上面的文字颜色）：

```dart
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(widget.title),
      ),
```

保存，热重载，手机上马上就变了。代码里的每一层，都能在屏幕上找到对应的那一块。

<!-- img: appbar.png — 深色背景、白色标题的 AppBar -->

> 为什么不用 `centerTitle`？在 iPhone 上，AppBar 的标题默认就是居中的，改了看不出变化。

## 4 热重载与热重启

1. 点几下加号，数到 5。
2. 改一处界面，保存。这是**热重载**：只换掉改过的代码，应用的状态不动，数字还是 5。
3. 再做一次**热重启**：在调试工具栏的会话下拉框里选 **Flutter (Dart)**，点绿色的 Restart 按钮。应用从 `main` 重新跑一遍，状态全部清零，数字回到 0。

改了 `main` 函数或全局变量，热重载看不出效果，就用热重启。

## 小结

- 代码都在 `lib` 里，配置在 `pubspec.yaml`
- 程序从 `main` 开始，经过 runApp、MaterialApp，到 Scaffold
- 热重载保留状态，热重启从头再来

## 本课术语

| 中文 | English |
|---|---|
| 入口函数 | main |
| runApp | runApp |
| MaterialApp | MaterialApp |
| Scaffold | Scaffold |
| 热重载 | hot reload |
| 热重启 | hot restart |

## 让 AI 来做

> 在 main.dart 里把 AppBar 的背景色改成 colorScheme.primary，标题文字用 onPrimary。

## 课后练习

1. 给 MaterialApp 加 `debugShowCheckedModeBanner: false`，去掉右上角的 DEBUG 角标。
