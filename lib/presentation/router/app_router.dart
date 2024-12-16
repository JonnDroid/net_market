import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/home_page/home_page.dart';
import '../pages/navigation_page/navigation_page.dart';

GoRouter appRouter = GoRouter(
  navigatorKey: GlobalKey<NavigatorState>(debugLabel: 'root'),
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          NavigationPage(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/cart',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/sell',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/inbox',
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const HomePage(),
          ),
        ])
      ],
    ),
  ],
);
