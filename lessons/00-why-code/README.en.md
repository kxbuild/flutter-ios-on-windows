# 00 AI can write code now. Should you still learn to code?

中文：[README.md](README.md)

<!-- video -->
**Video**: [Bilibili](https://www.bilibili.com/video/BV1AqyJzRESi)
<!-- /video -->

**Code**: this is the course intro; there is no code.

## Goals

- Know what AI coding agents are good at, and where they fall short
- See what to learn about programming now: terms, concepts, limits, and checking
- Know how this course works: build iOS apps with Flutter on Windows, and finish by building an app with AI in one hour

## 1 What AI can do

Let's be honest: AI coding agents are very capable now. Ask for a login screen, and you get working code in seconds. They also explain code, look things up, and write tests. Many simple tasks take just one sentence.

So this course won't ask you to out-type an AI.

## 2 Where it falls short

AI makes mistakes, and it sounds sure even when it's wrong:

- it can invent functions that don't exist;
- it can misread what you asked for;
- it can say "done" when it isn't.

In the video, AI is asked for a row of buttons. The iPhone shows a yellow and black bar: the content doesn't fit and overflows. Asked to fix it, the AI shrinks the text, and a longer title breaks it again.

<!-- img: ai-mistake.png — the yellow and black overflow bar on the iPhone -->

If you can't read the code, all you can do is ask it to try again.

## 3 What you need to learn

First, **you don't need to memorize syntax**. AI remembers every detail of it better than anyone. What you need is four things:

1. **Terms**: the language you share with AI. Say "that list looks wrong," and AI has to guess. Say "make the home list a ListView.builder," and it gets it right the first time. Terms are also the keys to search and documentation.
2. **Concepts**: state, async code, layout constraints. With them, you can judge whether AI's approach is good, not just whether it runs.
3. **Limits**: what programs can and can't do, what they're good at, what's easy and what's expensive. Knowing the limits makes your requests realistic, and AI can't fool you with "all done."
4. **Checking**: reading code, debugging, and testing. Not being able to write it is fine; not being able to read it means you can't review it. When AI gets it wrong, you need to spot it and find where.

In short: **if you can code, AI makes you faster. If you can't, AI is a gamble.** This course makes you the first kind.

## 4 How this course works

This course teaches you to **build iOS apps with Flutter on Windows**:

- Lessons 01–38: starting from zero, we build HabitDaily, a habit tracker, step by step, and submit it to the App Store;
- Lesson 39: an AI coding agent builds a full app in one hour, and you'll see every lesson pay off.

<!-- img: habitdaily.png — HabitDaily's home, check-in and calendar screens -->

How it works:

- one lesson a day, about ten minutes each, one topic at a time;
- every lesson has starting and finished code in this repo's `lessons/`;
- every recap lists the key terms and shows how you'd ask AI to do that step;
- no coding experience needed; we'll learn Dart along the way.

## Summary

- AI coding agents are capable, but they make mistakes, confidently
- Learning to code now means terms, concepts, limits, and checking, not memorizing syntax
- If you can code, AI makes you faster; if you can't, it's a gamble

## Key terms

| English | 中文 |
|---|---|
| AI coding agent | AI 编程助手 |
| term | 术语 |
| overflow | 溢出 |
| acceptance check | 验收 |

## Exercises

1. Write down an app you'd love to build. You'll use it in lesson 39.
2. Questions are welcome in this repo's [Discussions](https://github.com/kxbuild/flutter-ios-on-windows/discussions).
