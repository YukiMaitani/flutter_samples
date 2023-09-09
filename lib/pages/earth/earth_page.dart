import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EarthPage extends HookConsumerWidget {
  const EarthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        leading: BackButton(onPressed: () {
          context.pop();
        }),
        title: const Text('Earth'),
      ),
    );
  }
}
