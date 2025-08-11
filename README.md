# multi_builder

![Pub Version](https://img.shields.io/pub/v/multi_builder?style=flat-square&logo=dart&logoColor=white&label=Pub%20Version&color=blue)
![GitHub Repo stars](https://img.shields.io/github/stars/wyq0918dev/multi_builder?style=flat-square&logo=github&logoColor=white&label=GitHub%20Stars&color=blue)
![GitHub License](https://img.shields.io/github/license/wyq0918dev/multi_builder?style=flat-square&logo=github&logoColor=white&label=GitHub%20License)

轻松的在 WidgetsApp MaterialApp 或 CupertinoApp 中使用多个 TransitionBuilder.

Easily use multiple TransitionBuilder in WidgetsApp MaterialApp or CupertinoApp.

``` dart
MaterialApp(
    builder: [
        DevicePreview.appBuilder,
        FreeFEOS.builder,
    ].toBuilder, // 多构造器 MultiBuilder
    home: const MyHomePage(),
);
```
