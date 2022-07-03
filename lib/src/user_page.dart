import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// this page is where the analyzing stuff will be done (analyze song/playlist)
class UserPage extends HookConsumerWidget {
  const UserPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: const Color.fromRGBO(0, 0, 50, 100),
      child: const Center(
        child: Text('User Page'),
      ),
    );
  }
}
