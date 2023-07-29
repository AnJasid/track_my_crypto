import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class Invest {
  final String name;
  final double amount;
  final DateTime date;

  Invest({
    required this.name,
    required this.amount,
    required this.date,
  });

  String get formattedDate {
    return formatter.format(date);
  }
}
