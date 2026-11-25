# 04 Widget 是什么

English: [README.en.md](README.en.md)

<!-- video -->
**视频**：[Bilibili](https://www.bilibili.com/video/BV1WxyizTEa4) · [YouTube](https://youtu.be/V2oxzQlI_Fs)
<!-- /video -->

**代码**：起点 [start](start) ｜ 完成 [final](final)

> 起点是新工程 WidgetBasics 的默认模板（计数器）。这一课把它清空，从零写起。

## 本课目标

- 理解“一切皆 Widget”和 Widget 树（widget tree）
- 从空文件写出 runApp → MaterialApp → Scaffold → Center → Text
- 写出自己的 StatelessWidget，知道 build 方法是干什么的

## 1 Widget 树

Widget（组件）就是界面的组成部分。文字、按钮、图片是 Widget；居中、留白、横着排、竖着排，这些布局也是 Widget。一个 Widget 里面放另一个，一层套一层，就组成了 **Widget 树**：

```
MaterialApp
└─ Scaffold
   └─ Center
      └─ GreetingCard
         └─ Column
            ├─ Text
            └─ Text
```

<!-- img: widget-tree.png — Widget 树示意图 -->

## 2 从零写起

打开 `lib/main.dart`，把模板的代码全部删掉，然后照着树一层层写：

1. 导入 material 库，常用的 Widget 都在里面；
2. 写 `main` 函数，调用 `runApp`；
3. 最外层是 `MaterialApp`，它的 `home` 是一个 `Scaffold`；
4. `Scaffold` 的 `body` 放一个 `Center`，`Center` 里放一行 `Text`。

运行后，手机正中间会出现 `Hello, Flutter!`。

模板自带的 `test/widget_test.dart` 会报错，因为它还在找刚删掉的 `MyApp`。先换成一个简单的测试（见 final 里的文件），第 33 课再细讲测试。

## 3 拆出自己的 Widget

界面一复杂，全写在 `main` 里就乱了。我们把这块界面拆成自己的 Widget，叫 `GreetingCard`：

```dart
class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [Text('Hello, Flutter!'), Text('Everything is a widget.')],
    );
  }
}
```

- 它继承 **StatelessWidget**：没有状态、不会自己变的 Widget；
- 每个 Widget 都有一个 **build 方法**，它返回的就是这块界面长什么样；
- 这里返回一个 `Column`，竖着放两行文字；`mainAxisSize` 设成 `min`，让它只占内容需要的高度。

回到 `main`，用 `GreetingCard` 换掉原来的 `Text`：

```dart
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: Center(child: GreetingCard())),
    ),
  );
}
```

保存，热重载，两行字都出来了。以后写界面，就是不停地组合、拆分 Widget。

<!-- img: greeting-card.png — 手机上居中的两行字 -->

## 4 易错点

- `build` 里忘了写 `return`，编辑器马上标红；
- 类名要大写开头，写成 `greetingCard` 会有提示。

看到红线先别慌，把鼠标放上去，读一读它说的是什么。

## 小结

- 一切皆 Widget，层层嵌套成 Widget 树
- StatelessWidget 是没有状态的 Widget
- build 方法返回这块界面的样子

## 本课术语

| 中文 | English |
|---|---|
| Widget（组件） | widget |
| Widget 树 | widget tree |
| StatelessWidget | StatelessWidget |
| build 方法 | build method |
| runApp | runApp |

## 让 AI 来做

> 新建一个 StatelessWidget 叫 GreetingCard，用 Column 竖着放两行 Text，在首页居中显示。

## 课后练习

1. 照着 `GreetingCard`，再拆一个 `Footer` Widget，显示一行小字。
