import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:net_market/presentation/pages/temporary_page/temporary_page.dart';
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
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/cart',
              builder: (context, state) =>
                  const TemporaryPage(title: 'Cart Page'),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/sell',
              builder: (context, state) =>
                  const TemporaryPage(title: 'Sell Page'),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/inbox',
              builder: (context, state) =>
                  const TemporaryPage(title: 'Inbox Page'),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) =>
                  const TemporaryPage(title: 'Profile Page'),
            ),
          ],
        ),
      ],
    ),
  ],
);
