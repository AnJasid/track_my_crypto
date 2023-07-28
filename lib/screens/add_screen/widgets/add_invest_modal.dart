import 'package:flutter/material.dart';
import 'package:track_my_crypto/screens/add_screen/models/invest.dart';

class AddInvestModal extends StatefulWidget {
  const AddInvestModal({
    super.key,
    required this.onAddInvest,
  });

  final void Function(Invest invest) onAddInvest;

  @override
  State<AddInvestModal> createState() => _AddInvestModalState();
}

class _AddInvestModalState extends State<AddInvestModal> {
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _submitInvestData() {
    if (_nameController.text.trim().isEmpty) {
      // show error message
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid Input'),
          content: const Text('Please make sure a valid name was entered'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: const Text('Okay'),
            )
          ],
        ),
      );
      return;
    }
    widget.onAddInvest(
      Invest(
        name: _nameController.text,
      ),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 50),
          const Text(
            'Create Your Invest Log',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _nameController,
            decoration: const InputDecoration(
              label: Text('Name'),
            ),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Amount'),
              prefixText: '₱ ',
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(elevation: 0),
                child: const Text('Cancel'),
              ),
              ElevatedButton(
                onPressed: _submitInvestData,
                style: ElevatedButton.styleFrom(elevation: 0),
                child: const Text('Save'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
