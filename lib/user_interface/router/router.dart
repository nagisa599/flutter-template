import 'package:flutter_template/user_interface/pages/auth_page.dart';
import 'package:go_router/go_router.dart';
import '../pages/detail_page.dart'; //「routed」はプロジェクト名です。

import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/sessions.dart';
import '../pages/splash_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'splash',
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: '/login/redirection',
      name: 'login-redirection',
      redirect: (context, state) async {
        if (await checkLoggedIn()) {
          return '/home';
        } else {
          return '/login';
        }
      },
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: const HomePage(),
      ),
    ),
    GoRoute(
      path: '/detail/:id',
      name: 'detail',
      builder: (context, state) => DetailPage(id: state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        restorationId: state.pageKey.value,
        child: const MainView(),
      ),
      builder: (context, state) => const LoginPage(),
    ),
  ],
);
