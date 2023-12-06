import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/collision_detection/views/collision_detection_page.dart';
import 'package:flutter_samples/pages/earth/earth_page.dart';
import 'package:flutter_samples/pages/freeman_chain/freeman_chain_page.dart';
import 'package:flutter_samples/pages/home/home_page.dart';
import 'package:flutter_samples/pages/minesweeper/views/minesweeper_page.dart';
import 'package:flutter_samples/pages/minesweeper_riverpod_gen/minesweeper_riverpod_gen_page.dart';
import 'package:flutter_samples/router/router_paths.dart';
import 'package:go_router/go_router.dart';

import '../pages/life_or_death/views/game_page.dart';

final router = GoRouter(
  initialLocation: homePath,
  routes: [
    GoRoute(
      path: homePath,
      pageBuilder: (context, state) => const MaterialPage(child: HomePage()),
    ),
    GoRoute(
      path: earthPath,
      pageBuilder: (context, state) => const MaterialPage(child: EarthPage()),
    ),
    GoRoute(
      path: lifeOrDeathPath,
      pageBuilder: (context, state) => const MaterialPage(child: GamePage()),
    ),
    GoRoute(
      path: collisionDetectionPath,
      pageBuilder: (context, state) =>
          const MaterialPage(child: CollisionDetectionPage()),
    ),
    GoRoute(
      path: freemanChainPath,
      pageBuilder: (context, state) =>
          const MaterialPage(child: FreemanChainPage()),
    ),
    GoRoute(
      path: minesweeperPath,
      pageBuilder: (context, state) =>
          const MaterialPage(child: MinesweeperPage()),
    ),
    GoRoute(path: minesweeperRiverpodGenPath, pageBuilder: (context, state) {
      return const MaterialPage(child: MinesweeperRiverpodGenPage());
    }),
  ],
);
