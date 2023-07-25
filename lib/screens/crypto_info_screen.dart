import 'package:flutter/material.dart';

import 'package:track_my_crypto/models/crypto.dart';

class CryptoInfoScreen extends StatelessWidget {
  const CryptoInfoScreen({super.key, required this.data});

  final Crypto data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Data'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                data.name.toString(),
              ),
              Text(
                data.symbol.toString(),
              ),
            ],
          ),
          Image.asset(data.imagePath),
          Text(data.description),
        ],
      ),
    );
  }
}
