# 06 布局：行与列

English: [README.en.md](README.en.md)

<!-- video -->
**视频**：[Bilibili](https://www.bilibili.com/video/BV1t11szmE48) · [YouTube](https://youtu.be/j_bhMn4Io14)
<!-- /video -->

**代码**：起点 [start](start) ｜ 完成 [final](final)

> 起点是新工程 Layouts 的默认模板。这一课做一个“头像 + 名字 + 三个数字”的资料卡。

## 本课目标

- 分清主轴（main axis）和交叉轴（cross axis）
- 用 `mainAxisAlignment`、`crossAxisAlignment` 控制对齐
- 用 Container 的 margin / padding / color 和 SizedBox 留出间距
- 知道 Column 默认会占满整个高度，用 `MainAxisSize.min` 让它只占内容的高度

## 1 主轴与交叉轴

- **Row** 横着排，它的主轴是横的；
- **Column** 竖着排，它的主轴是竖的；
- `mainAxisAlignment` 管主轴方向怎么排，`crossAxisAlignment` 管另一个方向。

<!-- img: axis.png — Row 和 Column 的主轴、交叉轴示意图 -->

## 2 横排与竖排

资料卡的上半部分是一个 `Row`：左边圆形头像，右边一个 `Column` 竖着放名字和简介，`crossAxisAlignment: CrossAxisAlignment.start` 让文字左对齐。下半部分又是一个 `Row`，放三个数字，用 `spaceAround` 均匀分开：

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

每个数字是一个小 Widget `Stat`：数字在上、名称在下。

```dart
class Stat extends StatelessWidget {
  const Stat({super.key, required this.label, required this.value});

  final String label;
  final String value;
```

在手机上逐个换对齐方式（`start`、`center`、`spaceBetween`……），看效果最直观。

## 3 间距与留白

外面用一个 `Container` 包起来：`margin` 是外边距，`padding` 是内边距，`color` 是背景色。头像和名字之间用 `SizedBox(width: 16)` 留空隙。

```dart
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      color: Colors.teal.shade50,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
```

注意 `mainAxisSize: MainAxisSize.min`：Column 默认会占满整个高度，背景色就会铺满全屏；设成 `min`，它只占内容需要的高度，看起来才像一张卡片。

<!-- img: profile-header.png — 手机上的资料卡 -->

## 小结

- Row 横排、Column 竖排，排列方向是主轴
- `mainAxisAlignment` 管主轴，`crossAxisAlignment` 管交叉轴
- margin 在外、padding 在内，SizedBox 留空隙
- Column 默认占满高度，用 `MainAxisSize.min` 收起来

## 本课术语

| 中文 | English |
|---|---|
| 主轴 | main axis |
| 交叉轴 | cross axis |
| 外边距 | margin |
| 内边距 | padding |

## 让 AI 来做

> 用 Row 和 Column 做一个资料卡：左边圆形头像，右边名字和简介，下面一行三个数字均匀分布，外面加 16 的内边距。

## 课后练习

1. 把三个数字改成 `spaceEvenly`，和 `spaceAround` 比一比有什么不同。
