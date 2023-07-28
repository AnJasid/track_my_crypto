import 'package:flutter/material.dart';
import 'package:track_my_crypto/screens/add_screen/widgets/invest_item.dart';
import 'package:track_my_crypto/screens/add_screen/models/invest.dart';

class InvestList extends StatelessWidget {
  const InvestList({super.key, required this.invest});

  final List<Invest> invest;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: invest.length,
      itemBuilder: (BuildContext context, index) => InvestItem(
        investData: invest[index],
      ),
    );
  }
}
