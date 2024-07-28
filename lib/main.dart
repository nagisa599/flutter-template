import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        // todosRepositoryProvider.overrideWithValue(MockTodosRepository()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
