import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/pages/collision_detection/bloc/collision_bloc.dart';

class CollisionDetectionPage extends StatefulWidget {
  const CollisionDetectionPage({super.key});

  @override
  State<CollisionDetectionPage> createState() => _CollisionDetectionPageState();
}

class _CollisionDetectionPageState extends State<CollisionDetectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collision Detection'),
        shadowColor: Colors.transparent,
      ),
      body: BlocProvider<CollisionBloc>(
        create: (BuildContext context) {
          return CollisionBloc();
        },
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return const Column(
      children: [],
    );
  }
}
