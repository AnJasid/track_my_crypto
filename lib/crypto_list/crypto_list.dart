import 'package:flutter/material.dart';
import 'package:track_my_crypto/crypto_list/crypto_data.dart';
import 'package:track_my_crypto/crypto_list/crypto_item.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({super.key});

  @override
  Widget build(BuildContext context) {
    CryptoData cryptoData = CryptoData();
    return ListView.builder(
      itemCount: cryptoData.cryptoList.length,
      itemBuilder: (BuildContext context, index) =>
          CryptoItem(crypto: cryptoData.cryptoList[index]),
    );
  }
}
