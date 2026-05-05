/// multi_builder_web
library;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'multi_builder.dart';

final class MultiBuilderWeb {
  MultiBuilderWeb._();

  /// 平台插件注册
  ///
  /// 插件注册由Flutter框架接管, 请勿手动注册.
  static void registerWith(Registrar _) {
    MultiBuilderInterface.instance = MultiBuilderImpl();
  }
}
