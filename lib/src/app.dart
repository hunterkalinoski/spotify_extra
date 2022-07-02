import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'home.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Spotify Extra',
      home: Home(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromRGBO(29, 185, 84, 100),
      ),
    );
  }
}
