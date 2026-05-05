import 'package:flutter/widgets.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'default_impl.dart';

abstract base class MultiBuilderInterface extends PlatformInterface {
  MultiBuilderInterface() : super(token: _token);

  static final Object _token = Object();

  static MultiBuilderInterface _instance = DefaultImpl();

  static MultiBuilderInterface get instance => _instance;

  static set instance(MultiBuilderInterface instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  TransitionBuilder toBuilder(List<TransitionBuilder?> builders);
}
