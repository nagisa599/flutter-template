import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';
import 'package:go_router/go_router.dart';

class MainView extends ConsumerWidget {
  const MainView({Key? key}) : super(key: key);

  void login(WidgetRef ref) {
    print("ここは");
    ref.read(loginUseCaseProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
            onPressed: () async {
              // Use a Universal Link callback URL on iOS 17.4+ / macOS 14.4+
              // useHTTPS is ignored on Android
              login(ref);
              if (context.mounted) {
                context.go('/login/redirection');
              }
            },
            child: const Text("Log in"))
      ],
    );
  }
}
