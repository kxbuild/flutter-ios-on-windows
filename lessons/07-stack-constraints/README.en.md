# 07 Layout: Stack and constraints

中文：[README.md](README.md)

<!-- video -->
**Video**: [Bilibili](https://www.bilibili.com/video/BV1J11AzuEnT) · [YouTube](https://youtu.be/E4he8rLHEZE)
<!-- /video -->

**Code**: [start](start) | [final](final)

## Goals

- Read the yellow and black overflow bar: content bigger than its space
- Give a Row's remaining space to one child with Expanded
- Layer widgets with Stack and Positioned
- Understand the layout rule: constraints go down, sizes go up

## 1 It overflows

Make the bio in the profile header longer: `Flutter learner, building my first apps on iPhone`. After saving, a yellow and black striped bar appears on the right of the card, and the console reports an overflow. That's an **overflow**: the Row's content is wider than the Row can give, and Flutter marks it with the stripes.

<!-- img: overflow.png — the yellow and black bar on the right of the card -->

## 2 Sharing the remaining space

By default a Row lets each child be as wide as it wants, so the text won't wrap. Wrap the name-and-bio column in **Expanded**, meaning "take whatever space is left in the Row", and the text wraps within that width:

```dart
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ada Lovelace',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Flutter learner, building my first apps on iPhone'),
                  ],
                ),
              ),
```

Note: Expanded must sit directly inside a Row or Column.

## 3 Layering

To put a green "online" dot on the avatar's bottom-right corner, two widgets have to overlap. **Stack** layers its children, and **Positioned** places one layer:

```dart
              Stack(
                children: [
                  CircleAvatar(radius: 32, child: Icon(Icons.person, size: 32)),
                  Positioned(right: 0, bottom: 0, child: OnlineDot()),
                ],
              ),
```

The dot itself is a round `Container` with a white border:

```dart
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: Colors.green,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 2),
      ),
    );
```

Without Positioned, the dot ends up in the top-left corner, the Stack's default.

<!-- img: online-dot.png — the online dot on the avatar -->

## 4 The constraint rule

Flutter's layout fits in one sentence: **constraints go down, sizes go up, the parent sets the position**.

1. The parent tells the child how big it may be (the constraints);
2. the child picks its size within them and reports it back;
3. the parent decides where to put the child.

An overflow is a child that won't shrink and goes past its parent's limits; Expanded hands it the remaining space explicitly.

<!-- img: constraints.png — the constraint rule diagram -->

## Summary

- The yellow and black bar means overflow: content bigger than its space
- Expanded gives the Row's remaining space to a child
- Stack layers widgets; Positioned places them
- Constraints go down, sizes go up

## Key terms

| English | 中文 |
|---|---|
| overflow | 溢出 |
| layout constraints | 布局约束 |
| Expanded | Expanded |
| Stack | 叠放 |
| Positioned | 定位 |

## Ask AI

> The text on the right of the profile header overflows. Wrap the name and bio column in Expanded so the bio wraps.

## Exercises

1. Replace the dot on the avatar with an edit icon button.
