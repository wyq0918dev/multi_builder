import 'package:flutter/widgets.dart';

extension MultiBuilder on List<TransitionBuilder> {
  TransitionBuilder get toBuilder {
    return (context, child) {
      for (var builder in this) {
        child = builder(context, child);
      }
      return Container(child: child);
    };
  }
}
