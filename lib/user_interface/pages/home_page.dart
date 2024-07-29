import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';
import 'package:flutter_template/user_interface/router/router.dart';
import 'package:go_router/go_router.dart';
//「routed」はプロジェクト名です。

class HomePage extends ConsumerWidget {
  const HomePage({super.key});
  void logout(WidgetRef ref, BuildContext context) {
    ref.read(logoutUseCaseProvider);
    if (context.mounted) {
      context.go('/login');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
        actions: [
          TextButton(
              onPressed: () async {
                logout(ref, context);
              },
              child: Text('ログアウト'))
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
                child: Text('Aを閲覧する')),
            ElevatedButton(
                onPressed: () {
                  context.push('/detail/B');
                },
                child: Text('Bを閲覧する')),
            ElevatedButton(
                onPressed: () {
                  context.push('/detail/C');
                },
                child: Text('Cを閲覧する')),
          ],
        ),
      ),
    );
  }
}
