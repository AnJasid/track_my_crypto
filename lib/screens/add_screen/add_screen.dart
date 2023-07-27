import 'package:flutter/material.dart';
import 'package:track_my_crypto/screens/add_screen/add_invest_modal.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  void _showAddInvestOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const AddInvestModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Investment Logs'),
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: _showAddInvestOverlay,
        child: const Icon(Icons.add),
      ),
    );
  }
}
