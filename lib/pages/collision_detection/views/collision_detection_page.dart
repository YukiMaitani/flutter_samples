import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_samples/pages/collision_detection/bloc/collision_bloc.dart';
import 'package:flutter_samples/pages/collision_detection/bloc/collision_state.dart';

import '../bloc/collision_event.dart';
import 'boxes_painter.dart';

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
    return Builder(builder: (context) {
      final bloc = BlocProvider.of<CollisionBloc>(context);
      return BlocListener<CollisionBloc, CollisionState>(
        listener: (context, state) {},
        child: Column(
          children: [
            Expanded(child: _buildBoxesPainter(bloc)),
          ],
        ),
      );
    });
  }

  Widget _buildBoxesPainter(CollisionBloc bloc) {
    return GestureDetector(
      onPanUpdate: (details) {
        bloc.add(UpdatePointEvent(details.localPosition));
        setState(() {});
      },
      child: CustomPaint(
        painter: BoxesPainter(bloc.state),
        child: Container(),
      ),
    );
  }
}
