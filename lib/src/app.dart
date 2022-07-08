import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/home/home.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const Color spotify_green = Color.fromRGBO(29, 185, 84, 1);
    return ProviderScope(
      child: MaterialApp(
        title: 'Spotify Extra',
        home: Home(),
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: spotify_green,
          splashColor: spotify_green,
          highlightColor: spotify_green,
          colorScheme: const ColorScheme.dark().copyWith(
            primary: spotify_green,
            secondary: spotify_green,
          ),
        ),
      ),
    );
  }
}
