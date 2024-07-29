import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/user_interface/pages/auth_page.dart';
import 'package:go_router/go_router.dart';
import '../pages/home_page.dart';
import '../pages/login_page.dart';
import '../pages/detail_page.dart';
import '../pages/splash_page.dart';

final checkLoggedInUseCaseProvider = FutureProvider<bool>((ref) async {
  return ref.read(authRepositoryProvider).checkAuth();
});

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/login/redirection',
        name: 'login-redirection',
        redirect: (context, state) {
          // Corrected to include both parameters
          final isLoggedIn = ref.watch(checkLoggedInUseCaseProvider);
          return isLoggedIn.when(
            data: (isLoggedIn) => isLoggedIn ? '/home' : '/login',
            loading: () => '/splash',
            error: (_, __) => '/error',
          );
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
        builder: (context, state) =>
            DetailPage(id: state.pathParameters['id']!),
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
});
