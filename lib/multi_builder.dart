/// multi_builder
library;

import 'package:flutter/widgets.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

abstract base class MultiBuilderInterface extends PlatformInterface {
  MultiBuilderInterface() : super(token: _token);

  static final Object _token = Object();

  static MultiBuilderInterface _instance = MultiBuilderDefault();

  static MultiBuilderInterface get instance => _instance;

  static set instance(MultiBuilderInterface instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  TransitionBuilder toBuilder(List<TransitionBuilder?> builders);
}

final class MultiBuilderDefault extends MultiBuilderInterface {
  MultiBuilderDefault();

  @override
  TransitionBuilder toBuilder(List<TransitionBuilder?> builders) {
    return (context, child) => Container(child: child);
  }
}

final class MultiBuilderImpl extends MultiBuilderInterface {
  MultiBuilderImpl();

  @override
  TransitionBuilder toBuilder(List<TransitionBuilder?> builders) {
    return (context, child) {
      for (var builder in builders) {
        if (builder != null) {
          child = builder(context, child);
        }
      }
      return Container(child: child);
    };
  }
}

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
