import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/usecase/auth/auth_usecase.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  void login(WidgetRef ref) {
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
            },
            child: const Text('Log in'))
      ],
    );
  }
}
