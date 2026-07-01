import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/onboarding/awakening_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'awakening',
        builder: (context, state) => const AwakeningScreen(),
      ),
      GoRoute(
        path: '/create-profile',
        name: 'createProfile',
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Create Profile - Coming Soon')),
        ),
      ),
    ],
  );
}