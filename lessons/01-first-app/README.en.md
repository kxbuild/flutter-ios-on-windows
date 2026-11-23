# 01 Your first Flutter app on iPhone

中文：[README.md](README.md)

<!-- video -->
**Video**: [Bilibili](https://www.bilibili.com/video/BV1T8yJz8EA4) · [YouTube](https://youtu.be/X6LbHDJSKak)
<!-- /video -->

**Code**: [start](start) | [final](final)

> This lesson creates the project in VS Code, so `start/` is empty; `final/` is the project at the end.

## Goals

- Know what the course builds: HabitDaily, a habit tracker
- Create a Flutter project in VS Code and run Doctor
- Run the app on an iPhone
- Edit, save, and see the change right away with hot reload

## 1 What we'll build

Flutter is a UI framework from Google, and you write it in Dart. The same code runs on iPhone, Android and more; Flutter draws the UI itself, so it looks the same everywhere. Its best feature is hot reload: edit the code and see it on the phone in a second.

By the end of the course you'll have built HabitDaily, a habit tracker: add habits, check in every day, see your streak and a calendar, keep data on the phone, and get reminders. The last lesson submits it to the App Store. Everything is done on Windows.

<!-- img: habitdaily.png — the finished HabitDaily -->

## 2 Create a project

1. Open the Command Palette (Ctrl+Shift+P), run **KXBuild: New Project**, and pick the **Flutter** template.
2. Name the project `HelloFlutter`.
3. Use the bundle ID `net.kxbuild.course.flutter.helloflutter`. The bundle ID is the app's unique identity at Apple, usually a reversed domain.
4. Choose a folder and wait for the project to be created. The first time takes a while to fetch dependencies.

The first time you open a Flutter project, run **Doctor**. It checks the Flutter SDK, signing, and the phone. All green means you're good; if something fails, follow its hint and run it again.

> Connect the phone with a cable, tap "Trust This Computer", and turn on Developer Mode.

## 3 Run on iPhone

Open `lib/main.dart`, connect the iPhone, and click **Build & Run** in the KXBuild view. It builds the app, signs it, and installs it on the phone. The first build takes a minute or two; after that it's much faster.

The app is Flutter's counter sample: tap the plus button, and the number goes up.

<!-- img: counter.png — the counter sample on the phone -->

> When the phone asks to find devices on your local network, tap Allow, or hot reload can't connect.

## 4 Hot reload

Change two things in `main.dart`: the home title to `Hello, Flutter!`, and the theme color from purple to teal (type `tea` and pick `teal` from completion):

```dart
        colorScheme: .fromSeed(seedColor: Colors.teal),
      ),
      home: const MyHomePage(title: 'Hello, Flutter!'),
```

Press Ctrl+S. The title and color change on the phone right away, with no rebuild, and the count is still there: hot reload keeps the app's current state.

<!-- img: hot-reload.png — the teal Hello, Flutter! after hot reload -->

That's how we'll work in every lesson: edit and see.

## Summary

- Create a Flutter project, and run Doctor first
- Use Build & Run to install it on the iPhone
- Save your edits and hot reload applies them right away, keeping the state

## Key terms

| English | 中文 |
|---|---|
| hot reload | 热重载 |
| hot restart | 热重启 |
| bundle ID | Bundle ID |
| run on device | 真机调试 |

## Ask AI

> Create a Flutter project with the bundle ID net.example.hello, change the home title to Hello, Flutter!, and set the theme color to teal.

## Exercises

1. Replace the plus button's icon `Icons.add` with another icon (type `Icons.` to see completion), and save.
