import 'package:flutter/material.dart';
import 'package:river_app/config/config.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Riverpod App',
      theme: AppTheme().getTheme(),
    );
  }
}
