import 'package:flutter/material.dart';
import 'package:flutter_app_demo/data/notifiers.dart';
import 'package:flutter_app_demo/view/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.white,
              // brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: const WidgetTree(),
        );
      },
    );
  }
}
