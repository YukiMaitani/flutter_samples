import 'package:flutter/material.dart';
import 'package:flutter_samples/router/router_paths.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samples'),
        shadowColor: Colors.transparent,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ListView(
      children: [
        _buildListTile(title: 'Life or Death', path: lifeOrDeathPath),
        _buildListTile(
            title: 'Collision Detection', path: collisionDetectionPath),
        _buildListTile(title: 'Freeman Chain', path: freemanChainPath),
        _buildListTile(title: 'Minesweeper', path: minesweeperPath),
        _buildListTile(title: 'Minesweeper Riverpod Gen', path: minesweeperRiverpodGenPath),
        _buildListTile(title: 'Flame Camera', path: flameCameraPath),
      ],
    );
  }

  Widget _buildListTile({required String title, required String path}) {
    return Builder(builder: (context) {
      return ListTile(
        title: Text(title),
        onTap: () {
          context.push(path);
        },
      );
    });
  }
}
