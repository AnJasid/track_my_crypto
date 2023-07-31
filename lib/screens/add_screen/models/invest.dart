import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMMMd();

enum Category {
  ethereum,
  litecoin,
  cardano,
  polkadot,
  bitcoincash,
  stellar,
  dogecoin,
  binancecoin,
  tether,
  monero
}

final categoryImages = {
  Category.ethereum: Image.asset('assets/images/ethereum.png'),
  Category.litecoin: Image.asset('assets/images/litecoin.png'),
  Category.cardano: Image.asset('assets/images/cardano.png'),
  Category.polkadot: Image.asset('assets/images/polkadot.png'),
  Category.bitcoincash: Image.asset('assets/images/bitcoincash.png'),
  Category.stellar: Image.asset('assets/images/stellar.png'),
  Category.dogecoin: Image.asset('assets/images/dogecoin.png'),
  Category.binancecoin: Image.asset('assets/images/binance.png'),
  Category.tether: Image.asset('assets/images/tether.png'),
  Category.monero: Image.asset('assets/images/monero.png'),
};

class Invest {
  final String name;
  final double amount;
  final DateTime date;
  final Category category;

  Invest({
    required this.name,
    required this.amount,
    required this.date,
    required this.category,
  });

  String get formattedDate {
    return formatter.format(date);
  }
}
