# Flutter: Beginner to Expert — build iOS apps with Flutter on Windows

**Build iOS apps with Flutter on a Windows PC: from zero to an app running on your iPhone and submitted to the App Store.** A free video course in English and Chinese; this repo holds all of its code and written lessons.

- **Who it's for**: complete beginners. No Dart needed; any programming experience helps.
- **What you build**: over 38 lessons, HabitDaily, a habit tracker (habits, daily check-ins, streaks, a calendar, local storage, a quote of the day, reminders, English and Chinese), signed and submitted to the App Store. In the last lesson, an AI coding agent builds a complete expense-tracker app in one hour.
- **How it works**: one lesson a day, 6–12 minutes each, one topic per lesson. Every lesson has starting code and finished code: code along with the video, then compare.
- **Versions**: Flutter 3.47.8 · Dart 3.13.7 · iOS 17 or later · VS Code + the KXBuild extension

中文：[README.md](README.md)

<!-- links -->
**Videos**: [YouTube playlist](https://www.youtube.com/playlist?list=PLPjfLxuxybDs)
<!-- /links -->

## FAQ

**Can I build iOS apps on Windows?**
Yes. The whole course is recorded on Windows: write Flutter code in VS Code, build and sign with the KXBuild extension, install on an iPhone over USB, run and debug it with hot reload, and produce an .ipa ready for the App Store. The same workflow also works on Linux and macOS.

**What do I need?**
A computer (Windows, Linux or macOS), an iPhone with iOS 17 or later and a cable, and an Apple ID. A free Apple ID is enough to run on your own iPhone; publishing to the App Store needs a paid Apple Developer account.

**I've never programmed. Can I follow along?**
Yes. Lesson 00 covers why learning to code still matters with AI; lesson 01 gets your first app running on an iPhone. Dart is taught as it comes up, with four short Dart lessons along the way.

**Can I use the code?**
Yes. All code and text are in the public domain (The Unlicense): copy, change and use them for anything, no attribution needed.

**Where do I ask questions?**
In this repo's [Discussions](https://github.com/kxbuild/flutter-ios-on-windows/discussions) (share your progress with `#FlutterDaily` too). Found a bug in the code? Open an [Issue](https://github.com/kxbuild/flutter-ios-on-windows/issues).

## How to use

One folder per lesson (`lessons/`):

- `README.en.md`: the written lesson and links to the video
- `start/`: the code at the start of the lesson; follow along with the video
- `final/`: the finished code; compare when you're done

To open a lesson's `start/` or `final/`: open the folder in VS Code, connect your iPhone, and click Build & Run in the KXBuild view. The first time, run Doctor once.


## Lessons

<!-- lessons -->
### Basics

| # | Lesson | Video | Code |
|---|---|---|---|
| 00 | [AI can write code now. Should you still learn to code?](lessons/00-why-code/README.en.md) | [Bilibili](https://www.bilibili.com/video/BV1AqyJzRESi) · [YouTube](https://youtu.be/ktOP4-7I0_k) | [start](lessons/00-why-code/start) · [final](lessons/00-why-code/final) |
| 01 | [Your first Flutter app on iPhone](lessons/01-first-app/README.en.md) | [Bilibili](https://www.bilibili.com/video/BV1T8yJz8EA4) · [YouTube](https://youtu.be/X6LbHDJSKak) | [start](lessons/01-first-app/start) · [final](lessons/01-first-app/final) |
| 02 | [Project structure and main.dart](lessons/02-project-structure/README.en.md) | [Bilibili](https://www.bilibili.com/video/BV1z3ydzEEn8) · [YouTube](https://youtu.be/UROCJV82VOI) | [start](lessons/02-project-structure/start) · [final](lessons/02-project-structure/final) |
| 03 | [Dart basics: variables and functions](lessons/03-dart-basics/README.en.md) | [Bilibili](https://www.bilibili.com/video/BV1pgyqzTEqz) · [YouTube](https://youtu.be/YQgRRX8JGNA) | [start](lessons/03-dart-basics/start) · [final](lessons/03-dart-basics/final) |
| 04 | [What is a widget](lessons/04-widgets/README.en.md) | [Bilibili](https://www.bilibili.com/video/BV1WxyizTEa4) · [YouTube](https://youtu.be/V2oxzQlI_Fs) | [start](lessons/04-widgets/start) · [final](lessons/04-widgets/final) |
<!-- /lessons -->

## License

Everything in this repo, code and text, is in the public domain ([The Unlicense](LICENSE)): copy, change and use it for anything, no attribution needed.
