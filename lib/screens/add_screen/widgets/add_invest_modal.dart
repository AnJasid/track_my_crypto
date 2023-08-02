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
  DateTime? _selectedDate;
  Category _selectedCategory = Category.ethereum;

  @override
  void dispose() {
    _nameController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  void _submitInvestData() {
    final enteredAmount = double.tryParse(_amountController.text);
    final amountIsInvalid = enteredAmount == null || enteredAmount <= 0;
    if (_nameController.text.trim().isEmpty ||
        amountIsInvalid ||
        _selectedDate == null) {
      // show error message
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Invalid Input'),
          content: const Text(
              'Please check if the entered name, amount, date, and category is valid.'),
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
        amount: enteredAmount,
        date: _selectedDate!,
        category: _selectedCategory,
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
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 220,
            decoration: const BoxDecoration(
              color: Colors.white70,
            ),
            child: Column(
              children: [
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
                Row(
                  children: [
                    const Text(
                      'Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            _selectedDate == null
                                ? 'Please select a date'
                                : formatter.format(_selectedDate!),
                          ),
                          IconButton(
                            onPressed: _presentDatePicker,
                            icon: const Icon(Icons.calendar_month),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Category',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    DropdownButton(
                      value: _selectedCategory,
                      items: Category.values
                          .map(
                            (category) => DropdownMenuItem(
                              value: category,
                              child: Text(
                                category.name.toUpperCase(),
                              ),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        if (value == null) {
                          return;
                        }
                        setState(() {
                          _selectedCategory = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
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
