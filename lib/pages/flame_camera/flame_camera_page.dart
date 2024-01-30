import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FlameCameraPage extends HookConsumerWidget {
  const FlameCameraPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flame Camera'),
        shadowColor: Colors.transparent,
      ),
      body: const Column(),
    );
  }

}