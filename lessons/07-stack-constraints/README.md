# 07 布局：Stack 与约束

English: [README.en.md](README.en.md)

<!-- video -->
**视频**：[Bilibili](https://www.bilibili.com/video/BV1J11AzuEnT) · [YouTube](https://youtu.be/E4he8rLHEZE)
<!-- /video -->

**代码**：起点 [start](start) ｜ 完成 [final](final)

## 本课目标

- 看懂溢出（overflow）的黄黑条，知道它是“内容比给的空间大”
- 用 Expanded 把 Row 里剩下的空间分给一个子 Widget
- 用 Stack 和 Positioned 把 Widget 叠在一起
- 理解布局规则：约束向下传，尺寸向上报

## 1 溢出了

把资料卡里的简介改长：`Flutter learner, building my first apps on iPhone`。保存后，手机上卡片右边出现了一条黄黑相间的条纹，控制台里也报了 overflow。这就是**溢出**：Row 里的内容比 Row 能给的宽度还宽，Flutter 用黄黑条提醒你。

<!-- img: overflow.png — 资料卡右侧的黄黑条 -->

## 2 分配剩余空间

Row 默认让每个子 Widget 想多宽就多宽，文字就不肯换行。把名字和简介这一列包进 **Expanded**，意思是“Row 里剩下多少空间都给你”，文字就会在这个宽度里自动换行：

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

注意：Expanded 只能直接放在 Row 或 Column 里面。

## 3 叠放

想在头像右下角放一个绿色的“在线”小圆点，就要把两个 Widget 叠在一起。**Stack** 让子 Widget 一层层叠放，**Positioned** 决定某一层放在哪：

```dart
              Stack(
                children: [
                  CircleAvatar(radius: 32, child: Icon(Icons.person, size: 32)),
                  Positioned(right: 0, bottom: 0, child: OnlineDot()),
                ],
              ),
```

小圆点本身是一个带白边的圆形 `Container`：

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

不加 Positioned 的话，圆点会跑到左上角——这是 Stack 的默认位置。

<!-- img: online-dot.png — 头像右下角的在线圆点 -->

## 4 约束规则

Flutter 的布局可以记成一句话：**约束向下，尺寸向上，父决定位置**。

1. 父 Widget 告诉子 Widget：你最多多大（约束）；
2. 子 Widget 在这个范围里决定自己多大，再告诉父；
3. 父 Widget 决定把子放在哪。

溢出，就是子 Widget 不肯缩小、超出了父给的范围；Expanded 则是把剩下的空间明确交给它。

<!-- img: constraints.png — 约束规则示意图 -->

## 小结

- 黄黑条就是溢出：内容比空间大
- Expanded 把 Row 里剩下的空间分给它
- Stack 叠放，Positioned 定位
- 约束向下，尺寸向上

## 本课术语

| 中文 | English |
|---|---|
| 溢出 | overflow |
| 布局约束 | layout constraints |
| Expanded | Expanded |
| 叠放 | Stack |
| 定位 | Positioned |

## 让 AI 来做

> 资料卡右侧的文字溢出了，把名字和简介这一列包进 Expanded，让简介自动换行。

## 课后练习

1. 把头像右下角的圆点换成一个编辑图标按钮。
