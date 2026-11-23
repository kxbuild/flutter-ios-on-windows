# 01 跑起第一个应用

English: [README.en.md](README.en.md)

<!-- video -->
**视频**：[Bilibili](https://www.bilibili.com/video/BV1T8yJz8EA4) · [YouTube](https://youtu.be/X6LbHDJSKak)
<!-- /video -->

**代码**：起点 [start](start) ｜ 完成 [final](final)

> 这一课在 VS Code 里新建项目，所以 `start/` 是空的；`final/` 是做完这一课的样子。

## 本课目标

- 知道这套课最后做出什么：习惯打卡 App HabitDaily
- 在 VS Code 里新建 Flutter 项目并完成环境体检
- 把应用装到 iPhone 上运行
- 改代码、保存，用热重载（hot reload）立刻看到变化

## 1 我们要做什么

Flutter 是 Google 做的界面框架，用 Dart 语言写。同一套代码可以跑在 iPhone、Android 和更多平台上；界面由 Flutter 自己绘制，所以各平台看起来都一样。它最让人上瘾的是热重载：改完代码，一秒就能在手机上看到。

跟完这套课，你会做出一个习惯打卡 App，叫 HabitDaily：添加习惯、每天打卡、看连续天数和打卡日历，数据存在手机上，还会提醒你打卡。最后一课把它提交到 App Store。全程在 Windows 上完成。

<!-- img: habitdaily.png — HabitDaily 完成品 -->

## 2 新建项目

1. 打开命令面板（Ctrl+Shift+P），运行 **KXBuild: New Project**，选 **Flutter** 模板。
2. 项目名填 `HelloFlutter`。
3. Bundle ID 填 `net.kxbuild.course.flutter.helloflutter`。Bundle ID 是应用在苹果那边的唯一身份，一般用反过来的域名开头。
4. 选好存放位置，等它创建完成。第一次会下载一些依赖，时间稍长。

第一次打开 Flutter 项目，先运行一次 **Doctor**（体检）。它会检查 Flutter SDK、签名和手机连接，全部打勾就可以了；哪一项没通过，按提示处理再运行一次。

> 手机要用数据线连好、点过“信任此电脑”，并打开开发者模式。

## 3 真机运行

打开 `lib/main.dart`，连上 iPhone，在 KXBuild 侧边栏点 **Build & Run**。它会编译、签名，再装到手机上。第一次编译要一两分钟，之后就快多了。

应用启动后，是 Flutter 自带的计数器示例：点一下加号，数字加一。

<!-- img: counter.png — 手机上的计数器示例 -->

> 手机上弹出“允许查找本地网络设备”时要点允许，否则热重载连不上。

## 4 热重载

在 `main.dart` 里改两处：把首页标题改成 `Hello, Flutter!`，把主题色从紫色换成青绿色（输入 `tea`，从补全里选 `teal`）：

```dart
        colorScheme: .fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(title: 'Hello, Flutter!'),
```

按 Ctrl+S 保存，手机上的标题和颜色马上就变了，不用重新编译。刚才点出来的数字也还在——热重载会保留应用当前的状态。

<!-- img: hot-reload.png — 热重载后青绿色的 Hello, Flutter! -->

以后每一课都是这样工作：边改边看。

## 小结

- 新建 Flutter 项目，先跑 Doctor
- 用 Build & Run 装到 iPhone 上
- 改完代码保存，热重载马上生效，状态还在

## 本课术语

| 中文 | English |
|---|---|
| 热重载 | hot reload |
| 热重启 | hot restart |
| Bundle ID | bundle ID |
| 真机调试 | run on device |

## 让 AI 来做

> 新建一个 Flutter 项目，Bundle ID 用 net.example.hello，把首页标题改成 Hello, Flutter!，主题色改成 teal。

## 课后练习

1. 把加号按钮的图标 `Icons.add` 换成别的图标（输入 `Icons.` 看补全），保存看效果。
