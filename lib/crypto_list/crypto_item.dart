import 'package:flutter/material.dart';
import 'package:track_my_crypto/models/crypto.dart';
import 'package:track_my_crypto/screens/crypto_info_screen.dart';

class CryptoItem extends StatelessWidget {
  const CryptoItem({required this.crypto, super.key});

  final Crypto crypto;

  @override
  Widget build(BuildContext context) {
    void showCryptoInfoScreen() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CryptoInfoScreen(data: crypto),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      child: GestureDetector(
        onTap: showCryptoInfoScreen,
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
      ),
    );
  }
}
