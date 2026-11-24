# 02 Project structure and main.dart

中文：[README.md](README.md)

<!-- video -->
**Video**: [Bilibili](https://www.bilibili.com/video/BV1z3ydzEEn8) · [YouTube](https://youtu.be/UROCJV82VOI)
<!-- /video -->

**Code**: [start](start) | [final](final)

## Goals

- Know what lib, pubspec.yaml, ios, and test hold in a Flutter project
- Read from `main()` down to the screen: runApp → MaterialApp → Scaffold → AppBar
- Tell hot reload and hot restart apart

## 1 What's in the project

| Where | What |
|---|---|
| `lib/` | the Dart code we write, almost all of it |
| `pubspec.yaml` | project settings: name, version, and the packages we use |
| `ios/` | the generated iOS project, used for building and signing |
| `test/` | test code, covered in lesson 33 |
| `android/` | the Android project; this course doesn't need it |

## 2 Starting at main

Every Dart program starts at the `main` function. Here, `main` does one thing: it calls `runApp`, which puts a widget on the screen. For now, think of a widget as a piece of the screen; more in lesson 4.

```dart
void main() {
  runApp(const MyApp());
}
```

Open `lib/main.dart`, delete the template's long comments, and follow `runApp` down:

- `MyApp` returns a **MaterialApp**, the shell of the whole app, which holds the theme and the home page;
- `home` points to `MyHomePage`, with the `Hello, Flutter!` title from last time;
- the page starts with a **Scaffold**, which gives it a basic layout: the AppBar on top, the body, and the button in the corner.

```dart
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.teal)),
      home: const MyHomePage(title: 'Hello, Flutter!'),
```

The single dot before `fromSeed` is a shorthand; it means the same as `ColorScheme.fromSeed`.

## 3 Changing the AppBar

Run the app and compare with the phone. Change the AppBar color to `primary`, and add `foregroundColor` to make the title white (`onPrimary` is the text color meant to sit on primary):

```dart
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(widget.title),
      ),
```

Save, and hot reload updates the phone right away. Every layer in the code matches a part of the screen.

<!-- img: appbar.png — the AppBar with a dark background and a white title -->

> Why not `centerTitle`? On iPhone, the AppBar title is centered by default, so changing it shows nothing.

## 4 Hot reload vs. hot restart

1. Tap the plus button a few times, up to 5.
2. Change something and save. That's **hot reload**: it swaps in the changed code and keeps the app's state. The count is still 5.
3. Now do a **hot restart**: in the debug toolbar, pick the **Flutter (Dart)** session and click the green Restart button. The app runs from `main` again and clears all state. The count is back to 0.

If you change `main` or a global variable, hot reload won't show it; use hot restart.

## Summary

- Code lives in `lib`, settings in `pubspec.yaml`
- It starts at `main`, then runApp, MaterialApp, and Scaffold
- Hot reload keeps state; hot restart starts over

## Key terms

| English | 中文 |
|---|---|
| main | 入口函数 |
| runApp | runApp |
| MaterialApp | MaterialApp |
| Scaffold | Scaffold |
| hot reload | 热重载 |
| hot restart | 热重启 |

## Ask AI

> In main.dart, set the AppBar's background color to colorScheme.primary, with onPrimary for the title.

## Exercises

1. Add `debugShowCheckedModeBanner: false` to MaterialApp to remove the DEBUG banner in the corner.
