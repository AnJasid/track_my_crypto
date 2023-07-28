import 'package:flutter/material.dart';
import 'package:track_my_crypto/screens/add_screen/widgets/add_invest_modal.dart';
import 'package:track_my_crypto/screens/add_screen/widgets/invest_list.dart';
import 'package:track_my_crypto/screens/add_screen/models/invest.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  final List<Invest> _registeredInvest = [];

  void _showAddInvestOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => AddInvestModal(onAddInvest: _addInvest),
    );
  }

  void _addInvest(Invest invest) {
    setState(() {
      _registeredInvest.add(invest);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Investment Logs'),
      ),
      body: InvestList(invest: _registeredInvest),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: _showAddInvestOverlay,
        child: const Icon(Icons.add),
      ),
    );
  }
}
