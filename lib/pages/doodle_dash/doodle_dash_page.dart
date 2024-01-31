import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DoodleDashPage extends HookConsumerWidget {
  const DoodleDashPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Doodle Dash'),
        shadowColor: Colors.transparent,
      ),
      body: const Column(),
    );
  }
}