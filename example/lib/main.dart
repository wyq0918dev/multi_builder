import 'package:material_ui/material_ui.dart';
import 'package:multi_builder/multi_builder.dart';

void main() => runApp(const MyApp());

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Multi Builder Example')),
        body: Center(child: Text('Hello World')),
      ),
      // 支持多个 TransitionBuilder, 且支持为空
      builder: <TransitionBuilder?>[CustomBuilder.builder].toBuilder,
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          brightness: Brightness.dark,
        ),
      ),
    );
  }
}

final class CustomBuilder {
  const CustomBuilder._();

  static TransitionBuilder get builder {
    return (context, child) => Container(child: child);
  }
}
