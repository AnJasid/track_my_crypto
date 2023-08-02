import 'package:flutter/material.dart';

import 'package:track_my_crypto/models/crypto.dart';

class CryptoInfoScreen extends StatelessWidget {
  const CryptoInfoScreen({super.key, required this.data});

  final Crypto data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text(
          'Data',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    data.name.toString(),
                  ),
                  Text(
                    data.symbol.toString(),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Image.asset(
                data.imagePath,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 50),
              Text(data.description, textAlign: TextAlign.center),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Okay'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
