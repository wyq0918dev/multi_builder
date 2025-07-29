# multi_builder

轻松的在 WidgetsApp MaterialApp 或 CupertinoApp 中使用多个 TransitionBuilder

Easily use multiple TransitionBuilder in WidgetsApp MaterialApp or CupertinoApp

``` dart
MaterialApp(
    builder: [
        DevicePreview.appBuilder,
        FreeFEOS.builder,
    ].toBuilder, // 多构造器 MultiBuilder
    home: const MyHomePage(),
);
```
