# 05 Text, icons and images

中文：[README.md](README.md)

<!-- video -->
**Video**: [Bilibili](https://www.bilibili.com/video/BV1FUyyzsEy8) · [YouTube](https://youtu.be/9xMlikfpmbw)
<!-- /video -->

**Code**: [start](start) | [final](final)

## Goals

- Use TextStyle for text size, weight, color, and italics
- Show Material icons with Icon
- Register an asset in pubspec.yaml and show a local image with `Image.asset`
- Show an image from the web with `Image.network`, and handle failures

## 1 Text styles

We continue with last lesson's `GreetingCard`. Size, weight, and color go into a **TextStyle**, passed to `Text` as `style`:

```dart
        const Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        const Text(
          'Everything is a widget.',
          style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
        ),
```

## 2 Icons

Flutter comes with a full set of Material icons. Show one with **Icon**; type a few letters after `Icons.` and pick from completion:

```dart
        const Icon(Icons.wb_sunny, size: 48, color: Colors.orange),
```

## 3 Local images

Images bundled with the app are called assets. Two steps:

1. Put the image in `assets/images/` and register the folder in `pubspec.yaml` (mind the indentation):

```yaml
  assets:
    - assets/images/
```

2. Show it with `Image.asset`:

```dart
        Image.asset('assets/images/sunrise.png', width: 240),
```

Hot reload doesn't pick up new assets; do a **hot restart**. Also, the `const` in front of `Column` moves onto the child widgets, because the image isn't const.

<!-- img: assets.png — the local image on the phone -->

## 4 Network images

`Image.network` loads an image from a URL. The network can fail, so `errorBuilder` provides an icon to show instead:

```dart
        Image.network(
          bannerUrl,
          width: 240,
          height: 120,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.broken_image, size: 48),
        ),
```

`bannerUrl` is a constant at the top of the file, pointing to a practice image for tutorials.

<!-- img: network.png — text, icon, local image and network image together -->

## Summary

- Text styles go in TextStyle
- Register local images in pubspec.yaml; new assets need a hot restart
- Use `Image.network` for web images, and handle load failures

## Key terms

| English | 中文 |
|---|---|
| TextStyle | 文字样式 |
| Icon | 图标 |
| asset | 资源 |
| Image.network | 网络图片 |
| hot restart | 热重启 |

## Ask AI

> In GreetingCard's Column, add the local image assets/images/sunrise.png, 240 wide, and register the assets/images/ folder in pubspec.yaml.

## Exercises

1. Use `Text.rich` to show one sentence in two colors.
