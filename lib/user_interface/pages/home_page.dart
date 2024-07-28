import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../pages/sessions.dart'; //「routed」はプロジェクト名です。

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ホーム'),
        actions: [
          TextButton(
              onPressed: () async {
                await logout();
                if (context.mounted) {
                  context.go('/login');
                }
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
