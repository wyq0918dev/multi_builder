/// multi_builder_web
library;

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'multi_builder.dart';

final class MultiBuilderWeb {
  MultiBuilderWeb._();

  static void registerWith(Registrar _) {
    MultiBuilderInterface.instance = MultiBuilderImpl();
  }
}
