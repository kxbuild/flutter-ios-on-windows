# Flutter 从入门到精通：在 Windows 上用 Flutter 开发 iOS App

**在 Windows 电脑上，用 Flutter 从零开发 iOS App，装到 iPhone 真机上运行，最后上架 App Store。** 这是一套免费的中英双语视频课程，这个仓库是它的全部代码和图文教程。

- **适合谁**：零基础初学者。不需要学过 Dart，有任何编程基础更好。
- **做出什么**：跟着 38 课一步步做出习惯打卡 App「HabitDaily」（添加习惯、每日打卡、连续天数、打卡日历、本地保存、每日一句、提醒通知、中英双语），打包签名并提交 App Store；最后一课用 AI 编程助手一小时做出一个完整的记账 App。
- **怎么学**：每天一课，每课 6–12 分钟、只讲一件事。每课都有起点代码和完成代码，跟着视频写，写完对照。
- **版本**：Flutter 3.47.8 · Dart 3.13.7 · iOS 17 以上 · VS Code + KXBuild 扩展

English: [README.en.md](README.en.md)

<!-- links -->
**视频**：[YouTube 播放列表](https://www.youtube.com/playlist?list=PLPjfLxuxybDs)
<!-- /links -->

## 常见问题

**在 Windows 上能开发 iOS App 吗？**
能。这套课全程在 Windows 上录制：用 VS Code 写 Flutter 代码，用 KXBuild 扩展编译、签名，通过数据线装到 iPhone 上运行和调试，热重载即时生效，最后打出能上传 App Store 的 .ipa。同样的流程在 Linux 和 macOS 上也能用。

**需要什么？**
一台电脑（Windows、Linux 或 macOS）、一部 iOS 17 以上的 iPhone 和数据线、一个 Apple ID。免费的 Apple ID 就能在真机上调试；上架 App Store 需要付费的 Apple 开发者账号。

**我完全没学过编程，能跟上吗？**
能。第 00 课先讲 AI 时代为什么还要学编程，第 01 课就在 iPhone 上跑起第一个应用。Dart 语法用到时再讲，穿插 4 节 Dart 速成课。

**代码可以随便用吗？**
可以。全部代码和文档都在公有领域（The Unlicense），复制、修改、商用都不需要署名。

**有问题去哪儿问？**
在本仓库的 [Discussions](https://github.com/kxbuild/flutter-ios-on-windows/discussions) 里提问或晒成果（话题 `#Flutter打卡`）；代码有错请提 [Issue](https://github.com/kxbuild/flutter-ios-on-windows/issues)。

## 怎么用

每一课一个目录（`lessons/`）：

- `README.md`：这一课的图文教程和视频链接
- `start/`：这一课开始时的代码，跟着视频一起写
- `final/`：这一课结束时的完整代码，写完对照

打开某一课的 `start/` 或 `final/`：在 VS Code 里打开这个文件夹，连上 iPhone，在 KXBuild 侧边栏点 Build & Run。第一次打开先运行一次 Doctor 体检。


## 课程目录

<!-- lessons -->
### 入门

| # | 课程 | 视频 | 代码 |
|---|---|---|---|
| 00 | [AI 都会写代码了，还要学编程吗？](lessons/00-why-code/README.md) | [Bilibili](https://www.bilibili.com/video/BV1AqyJzRESi) · [YouTube](https://youtu.be/ktOP4-7I0_k) | [start](lessons/00-why-code/start) · [final](lessons/00-why-code/final) |
| 01 | [跑起第一个应用](lessons/01-first-app/README.md) | [Bilibili](https://www.bilibili.com/video/BV1T8yJz8EA4) · [YouTube](https://youtu.be/X6LbHDJSKak) | [start](lessons/01-first-app/start) · [final](lessons/01-first-app/final) |
| 02 | [项目结构与入口](lessons/02-project-structure/README.md) | [Bilibili](https://www.bilibili.com/video/BV1z3ydzEEn8) · [YouTube](https://youtu.be/UROCJV82VOI) | [start](lessons/02-project-structure/start) · [final](lessons/02-project-structure/final) |
<!-- /lessons -->

## 许可

本仓库的代码和文档都放弃版权、进入公有领域（[The Unlicense](LICENSE)）：可以随意复制、修改、商用，不需要署名。
