import 'package:flutter/material.dart';
import 'package:flutter_samples/pages/earth/earth_page.dart';
import 'package:flutter_samples/pages/home/home_page.dart';
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
  ],
);
