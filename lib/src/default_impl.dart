import 'package:flutter/widgets.dart';

import 'interface.dart';

final class DefaultImpl extends MultiBuilderInterface {
  DefaultImpl();

  @override
  TransitionBuilder toBuilder(List<TransitionBuilder?> builders) {
    return (context, child) => Container(child: child);
  }
}
