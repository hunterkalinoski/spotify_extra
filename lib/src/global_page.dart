import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// this page is where the analyzing stuff will be done (analyze song/playlist)
class GlobalPage extends HookConsumerWidget {
  const GlobalPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: Text('Global Page'),
    );
  }
}
