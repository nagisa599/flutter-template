import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/domain/auth/repository/auth_repository.dart';
import 'package:flutter_template/domain/auth/repository/auth_sharepreference.dart';
import 'package:flutter_template/domain/todo/repository/todo_repository.dart';
import 'package:flutter_template/domain/todo/repository/todo_sharepreference.dart';
import 'package:flutter_template/user_interface/pages/todo_paga.dart';
import 'package:flutter_template/user_interface/router/router.dart';

void main() {
  runApp(
    ProviderScope(
      // 依存性の注入
      overrides: [
        todosRepositoryProvider
            .overrideWithValue(SharedPreferencesTodosRepository()),
        authRepositoryProvider
            .overrideWithValue(SharedPreferencesAuthRepository()),
        // todosRepositoryProvider.overrideWithValue(MockTodosRepository()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // MaterialAppにrouterを追加。
      routerConfig: router, //goRouterを基盤に設定する。
      title: 'riverpod ✖️ go_router',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
