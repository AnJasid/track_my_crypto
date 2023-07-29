import 'package:flutter/material.dart';
import 'package:track_my_crypto/screens/add_screen/models/invest.dart';

class InvestItem extends StatelessWidget {
  const InvestItem({super.key, required this.investData});

  final Invest investData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Card(
        child: ListTile(
          title: Text(
            investData.name.toString(),
          ),
          subtitle: Text(
            investData.formattedDate,
          ),
          trailing: Text(
            '₱${investData.amount.toStringAsFixed(2)}',
          ),
        ),
      ),
    );
  }
}
