# multi_builder

轻松的在WidgetsApp MaterialApp 或 CupertinoApp中使用多个 TransitionBuilder

``` dart
MaterialApp(
    builder: [
        DevicePreview.appBuilder,
        FreeFEOS.builder,
    ].toBuilder, // 多构造器
    home: const MyHomePage(),
);
```
