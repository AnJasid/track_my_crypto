import 'package:flutter/material.dart';
import 'package:track_my_crypto/screens/add_screen/widgets/add_invest_modal.dart';
import 'package:track_my_crypto/screens/add_screen/widgets/invest_list.dart';
import 'package:track_my_crypto/screens/add_screen/models/invest.dart';
import 'package:track_my_crypto/utils/color_resources.dart';

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
      backgroundColor: ColorResources.backgroundColor,
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
    Widget mainContent = const Center(
      child: Text('No Crypto investment found. Start adding some!'),
    );

    if (_registeredInvest.isNotEmpty) {
      mainContent = InvestList(invest: _registeredInvest);
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Investment Logs',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: mainContent,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: _showAddInvestOverlay,
        child: const Icon(Icons.add),
      ),
    );
  }
}
