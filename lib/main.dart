import 'package:flutter/material.dart';
import 'package:todo_app/core/locator/locator.dart';
import 'package:todo_app/core/routes/app_router.dart';

void main() async {
  setUpLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: goRouter);
  }
}
