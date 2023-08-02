import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final int _totalInvestments = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Total Investment',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  '₱${_totalInvestments.toString()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Pie Chart will display here')
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
