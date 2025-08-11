/// multi_builder
library;

import 'package:flutter/widgets.dart';

extension MultiBuilder on List<TransitionBuilder?> {
  /// Easily use multiple TransitionBuilder in WidgetsApp
  /// MaterialApp or CupertinoApp.
  ///
  /// ```dart
  /// MaterialApp(
  ///   builder: [
  ///       DevicePreview.appBuilder,
  ///       FreeFEOS.builder,
  ///   ].toBuilder, // multiple TransitionBuilder
  ///   home: const MyHomePage(),
  /// );
  /// ```
  TransitionBuilder get toBuilder {
    return (context, child) {
      for (var builder in this) {
        if (builder != null) {
          child = builder(context, child);
        }
      }
      return Container(child: child);
    };
  }
}
