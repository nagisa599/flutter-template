import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.id, super.key});

  final String id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$idのページ'),
      ),
      body: ListView(
        children: [
          Center(
            child: Text('あなたが見ているのは$idです。'),
          ),
          const SizedBox(height: 100),
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('戻る'),
          ),
        ],
      ),
    );
  }
}
