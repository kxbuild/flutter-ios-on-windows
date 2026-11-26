# 05 文字、图标与图片

English: [README.en.md](README.en.md)

<!-- video -->
**视频**：[Bilibili](https://www.bilibili.com/video/BV1FUyyzsEy8) · [YouTube](https://youtu.be/9xMlikfpmbw)
<!-- /video -->

**代码**：起点 [start](start) ｜ 完成 [final](final)

## 本课目标

- 用 TextStyle 改文字的大小、粗细、颜色、斜体
- 用 Icon 显示 Material 图标
- 在 pubspec.yaml 登记资源（asset），用 `Image.asset` 显示本地图片
- 用 `Image.network` 显示网络图片，并处理加载失败

## 1 文字样式

接着上一课的 `GreetingCard`。文字的大小、粗细、颜色都写在 **TextStyle**（文字样式）里，通过 `Text` 的 `style` 传进去：

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

## 2 图标

Flutter 自带一整套 Material 图标，用 **Icon** 显示，`Icons.` 后面打几个字母就能从补全里挑：

```dart
        const Icon(Icons.wb_sunny, size: 48, color: Colors.orange),
```

## 3 本地图片

打包进 App 的图片叫资源（asset）。分两步：

1. 把图片放进 `assets/images/`，在 `pubspec.yaml` 里登记这个文件夹（注意缩进）：

```yaml
  assets:
    - assets/images/
```

2. 在代码里用 `Image.asset` 显示：

```dart
        Image.asset('assets/images/sunrise.png', width: 240),
```

新加的资源热重载认不到，要做一次**热重启**。另外，`Column` 前面原来的 `const` 要挪到各个子 Widget 上，因为图片不是 const 的。

<!-- img: assets.png — 手机上显示出本地图片 -->

## 4 网络图片

`Image.network` 从网址加载图片。网络可能不通，所以用 `errorBuilder` 准备一个加载失败时显示的图标：

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

`bannerUrl` 是写在文件开头的一个常量，指向一张教程用的练习图片。

<!-- img: network.png — 文字、图标、本地图片和网络图片一起显示 -->

## 小结

- 文字样式写在 TextStyle 里
- 本地图片先在 pubspec.yaml 登记，新资源要热重启
- 网络图片用 `Image.network`，记得处理加载失败

## 本课术语

| 中文 | English |
|---|---|
| 文字样式 | TextStyle |
| 图标 | Icon |
| 资源 | asset |
| 网络图片 | Image.network |
| 热重启 | hot restart |

## 让 AI 来做

> 在 GreetingCard 的 Column 里加一张本地图片 assets/images/sunrise.png，宽 240，并在 pubspec.yaml 里登记 assets/images/ 文件夹。

## 课后练习

1. 用 `Text.rich` 让一句话里有两种颜色。
