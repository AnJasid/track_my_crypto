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
        centerTitle: false,
        title: const Text('Crypto'),
      ),
      body: ListView.builder(
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
      ),
    );
  }
}
