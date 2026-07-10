import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/onboarding/awakening_screen_01.dart';
import '../screens/onboarding/awakening_screen_02.dart';
import '../screens/onboarding/awakening_screen_03.dart';

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
        builder: (context, state) => const AwakeningStepTwo(),
      ),
      GoRoute(
        path: '/select-path',
        name: 'selectPath',
        builder: (context, state) => const AwakeningStepThree(),
      ),
    ],
  );
}