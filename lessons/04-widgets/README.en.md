# 04 What is a widget

中文：[README.md](README.md)

<!-- video -->
**Video**: [Bilibili](https://www.bilibili.com/video/BV1WxyizTEa4) · [YouTube](https://youtu.be/V2oxzQlI_Fs)
<!-- /video -->

**Code**: [start](start) | [final](final)

> The starting point is the default template (counter) of a new project, WidgetBasics. This lesson clears it and starts from scratch.

## Goals

- Understand "everything is a widget" and the widget tree
- Write runApp → MaterialApp → Scaffold → Center → Text from an empty file
- Write your own StatelessWidget and know what its build method does

## 1 The widget tree

Widgets are the building blocks of a Flutter screen. Text, buttons, and images are widgets; so are layouts like centering, padding, rows, and columns. Widgets go inside other widgets, layer by layer, forming the **widget tree**:

```
MaterialApp
└─ Scaffold
   └─ Center
      └─ GreetingCard
         └─ Column
            ├─ Text
            └─ Text
```

<!-- img: widget-tree.png — the widget tree diagram -->

## 2 From scratch

Open `lib/main.dart`, delete all the template code, and write the tree layer by layer:

1. import the material library, which has Flutter's common widgets;
2. write `main` and call `runApp`;
3. the outermost widget is `MaterialApp`; its `home` is a `Scaffold`;
4. the `Scaffold`'s `body` is a `Center`, and inside it, a `Text`.

Run it, and `Hello, Flutter!` appears in the middle of the phone.

The template's `test/widget_test.dart` now shows errors: it still looks for the `MyApp` we deleted. Swap in a simple test for now (see the file in final); tests come in lesson 33.

## 3 Your own widget

As a screen grows, putting it all in `main` gets messy. So let's pull this part out into our own widget, `GreetingCard`:

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

- It extends **StatelessWidget**: a widget with no state that never changes by itself;
- every widget has a **build method**; what it returns is how this part of the screen looks;
- here it returns a `Column` with two lines of text; `mainAxisSize: MainAxisSize.min` keeps it only as tall as its content.

Back in `main`, replace the `Text` with `GreetingCard`:

```dart
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: Center(child: GreetingCard())),
    ),
  );
}
```

Save, and hot reload shows both lines. Building a Flutter screen is all about combining and splitting widgets.

<!-- img: greeting-card.png — two centered lines on the phone -->

## 4 Common mistakes

- Forgetting `return` in `build`: the editor flags it right away;
- class names start with a capital letter; `greetingCard` gets a warning.

Don't panic at red lines. Hover and read what it says.

## Summary

- Everything is a widget, nested into a widget tree
- A StatelessWidget is a widget with no state
- The build method returns how that part of the screen looks

## Key terms

| English | 中文 |
|---|---|
| widget | Widget（组件） |
| widget tree | Widget 树 |
| StatelessWidget | StatelessWidget |
| build method | build 方法 |
| runApp | runApp |

## Ask AI

> Create a StatelessWidget called GreetingCard with two Text lines in a Column, centered on the home page.

## Exercises

1. Following `GreetingCard`, pull out a `Footer` widget that shows a line of small text.
