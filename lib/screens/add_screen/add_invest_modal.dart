import 'package:flutter/material.dart';

class AddInvestModal extends StatefulWidget {
  const AddInvestModal({super.key});

  @override
  State<AddInvestModal> createState() => _AddInvestModalState();
}

class _AddInvestModalState extends State<AddInvestModal> {
  var _enteredName = '';

  void _saveNameInput(String inputValue) {
    _enteredName = inputValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          const Text(
            'Create Your Invest Log',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            onChanged: _saveNameInput,
            decoration: const InputDecoration(
              label: Text('Name'),
            ),
          ),
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
                onPressed: () {},
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
