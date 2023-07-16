import 'package:flutter/material.dart';
import 'package:track_my_crypto/crypto_list/crypto_data.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({super.key});

  @override
  Widget build(BuildContext context) {
    CryptoData listOfCryptos = CryptoData();
    return ListView.builder(
      itemCount: listOfCryptos.cryptoList.length,
      itemBuilder: (BuildContext context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 5,
          ),
          child: Card(
            child: ListTile(
              leading: ClipRRect(
                child: Image.asset(
                  listOfCryptos.cryptoList[index].imagePath.toString(),
                ),
              ),
              title: Text(
                listOfCryptos.cryptoList[index].name.toString(),
              ),
              subtitle: Text(
                listOfCryptos.cryptoList[index].symbol.toString(),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          ),
        );
      },
    );
  }
}
