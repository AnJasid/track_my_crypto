import 'package:flutter/material.dart';
import 'package:track_my_crypto/crypto_list/crypto_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Crypto'),
      ),
      body: const Column(
        children: [
          SizedBox(height: 25),
          Expanded(child: CryptoList()),
        ],
      ),
    );
  }
}
