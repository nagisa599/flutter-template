import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  Credentials? _credentials;

  late Auth0 auth0;

  @override
  void initState() {
    super.initState();
    auth0 = Auth0('dev-fg2uut4bcfvsb2p7.us.auth0.com',
        'zKVIZQgOlR91aIoikorFFmndJWQQXJ8f');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (_credentials == null)
          ElevatedButton(
              onPressed: () async {
                // Use a Universal Link callback URL on iOS 17.4+ / macOS 14.4+
                // useHTTPS is ignored on Android
                final credentials = await auth0.webAuthentication().login();

                setState(() {
                  _credentials = credentials;
                });
              },
              child: const Text("Log in"))
      ],
    );
  }
}
