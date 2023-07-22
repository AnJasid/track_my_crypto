import 'package:flutter/material.dart';
import 'package:track_my_crypto/models/crypto.dart';

class CryptoItem extends StatelessWidget {
  const CryptoItem({required this.crypto, super.key});

  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      child: Card(
        child: ListTile(
          leading: ClipRRect(
            child: Image.asset(crypto.imagePath),
          ),
          title: Text(crypto.name),
          subtitle: Text(crypto.symbol),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
