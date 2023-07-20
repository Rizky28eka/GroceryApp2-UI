import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/category_page.dart';
import '../pages/home_page.dart';
import '../pages/main_page.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MainPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'category',
          builder: (BuildContext context, GoRouterState state) {
            return const CategoryPage();
          },
        ),
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomePage();
          },
        ),
      ],
    ),
  ],
);
