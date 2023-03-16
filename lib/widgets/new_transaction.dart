import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx);

  void submitData() {
    addTx(
      titleController.text,
      double.parse(amountController.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                ),
                // onChanged: (value) => titleInput,
              ),
              TextField(
                keyboardType: TextInputType.number,
                controller: amountController,
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                // onChanged: (value) => amountInput,
                onSubmitted: (_) => submitData,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Add Transaction',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
