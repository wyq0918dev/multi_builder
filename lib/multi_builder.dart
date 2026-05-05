/// multi_builder
library;

import 'package:flutter/widgets.dart';

import 'src/impl.dart';
import 'src/interface.dart';

final class MultiBuilder {
  const MultiBuilder._();

  /// 平台插件注册
  ///
  /// 插件注册由Flutter框架接管, 请勿手动注册.
  static void registerWith() {
    MultiBuilderInterface.instance = MultiBuilderImpl();
  }
}

extension MultiBuilderExtension on List<TransitionBuilder?> {
  /// 轻松的在 WidgetsApp MaterialApp 或 CupertinoApp
  /// 中使用多个 TransitionBuilder.
  ///
  /// ```dart
  /// MaterialApp(
  ///   builder: <TransitionBuilder?>[
  ///       DevicePreview.appBuilder,
  ///       FreeFEOS.builder,
  ///   ].toBuilder, // 多构造器 MultiBuilder
  ///   home: const MyHomePage(),
  /// );
  /// ```
  TransitionBuilder get toBuilder {
    return MultiBuilderInterface.instance.toBuilder(this);
  }
}
