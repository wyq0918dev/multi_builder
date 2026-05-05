import 'package:flutter/widgets.dart';

import 'interface.dart';

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
