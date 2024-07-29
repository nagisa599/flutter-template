import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';
import 'package:go_router/go_router.dart';
//「routed」はプロジェクト名です。

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  void logout(WidgetRef ref, BuildContext context) {
    ref.read(logoutUseCaseProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム'),
        actions: [
          TextButton(
              onPressed: () async {
                logout(ref, context);
              },
              child: const Text('ログアウト'))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.push('/detail/A');
                },
                child: const Text('Aを閲覧する')),
            ElevatedButton(
                onPressed: () {
                  context.push('/detail/B');
                },
                child: const Text('Bを閲覧する')),
            ElevatedButton(
                onPressed: () {
                  context.push('/detail/C');
                },
                child: const Text('Cを閲覧する')),
          ],
        ),
      ),
    );
  }
}
