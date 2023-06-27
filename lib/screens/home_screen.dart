import 'package:flutter/material.dart';
import 'package:track_my_crypto/crypto_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CryptoList listOfCryptos = CryptoList();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: listOfCryptos.cryptoList.length,
        itemBuilder: (BuildContext context, index) {
          return const Card(
            child: ListTile(),
          );
        },
      ),
    );
  }
}
