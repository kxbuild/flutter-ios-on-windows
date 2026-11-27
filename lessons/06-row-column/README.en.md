# 06 Layout: Row and Column

中文：[README.md](README.md)

<!-- video -->
**Video**: [Bilibili](https://www.bilibili.com/video/BV1t11szmE48) · [YouTube](https://youtu.be/j_bhMn4Io14)
<!-- /video -->

**Code**: [start](start) | [final](final)

> The starting point is the default template of a new project, Layouts. This lesson builds a profile header: avatar, name, and three numbers.

## Goals

- Tell the main axis and the cross axis apart
- Align children with `mainAxisAlignment` and `crossAxisAlignment`
- Add space with a Container's margin / padding / color and SizedBox
- Know that a Column fills the full height by default, and use `MainAxisSize.min` to shrink it

## 1 Main and cross axis

- A **Row** lays children out horizontally; its main axis is horizontal;
- a **Column** lays them out vertically; its main axis is vertical;
- `mainAxisAlignment` controls the main axis, `crossAxisAlignment` the other one.

<!-- img: axis.png — main and cross axis of Row and Column -->

## 2 Rows and columns

The top of the header is a `Row`: a round avatar on the left, and a `Column` with the name and bio on the right; `crossAxisAlignment: CrossAxisAlignment.start` aligns the text to the left. The bottom is another `Row` with three numbers, spread out with `spaceAround`:

```dart
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stat(label: 'Posts', value: '12'),
              Stat(label: 'Followers', value: '340'),
              Stat(label: 'Following', value: '87'),
            ],
          ),
```

Each number is a small widget, `Stat`: the value on top, the label below.

```dart
class Stat extends StatelessWidget {
  const Stat({super.key, required this.label, required this.value});

  final String label;
  final String value;
```

Switching the alignment values on the phone (`start`, `center`, `spaceBetween`...) is the quickest way to see what they do.

## 3 Spacing

A `Container` wraps it all: `margin` is the space outside, `padding` the space inside, `color` the background. `SizedBox(width: 16)` adds a gap between the avatar and the name.

```dart
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      color: Colors.teal.shade50,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
```

Note `mainAxisSize: MainAxisSize.min`: by default a Column takes the full height, so the background fills the whole screen. With `min`, it's only as tall as its content, and it looks like a card.

<!-- img: profile-header.png — the profile header on the phone -->

## Summary

- Row lays out horizontally, Column vertically; that direction is the main axis
- `mainAxisAlignment` controls the main axis, `crossAxisAlignment` the cross axis
- margin is outside, padding inside; SizedBox adds a gap
- A Column fills the full height by default; `MainAxisSize.min` shrinks it

## Key terms

| English | 中文 |
|---|---|
| main axis | 主轴 |
| cross axis | 交叉轴 |
| margin | 外边距 |
| padding | 内边距 |

## Ask AI

> Build a profile header with Row and Column: a round avatar on the left, name and bio on the right, a row of three evenly spaced numbers below, and 16 of padding around it.

## Exercises

1. Change the three numbers to `spaceEvenly` and compare it with `spaceAround`.
