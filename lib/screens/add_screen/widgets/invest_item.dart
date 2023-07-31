import 'package:flutter/material.dart';
import 'package:track_my_crypto/screens/add_screen/models/invest.dart';

class InvestItem extends StatelessWidget {
  const InvestItem({super.key, required this.investData});

  final Invest investData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 2,
        ),
        child: Card(
          child: ListTile(
            leading: ClipRRect(
              child: categoryImages[investData.category],
            ),
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
      ),
    );
  }
}
