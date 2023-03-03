import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  NewTransaction(this.addTx);
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
                controller: amountController,
                decoration: InputDecoration(
                  labelText: 'Amount',
                ),
                // onChanged: (value) => amountInput,
              ),
              TextButton(
                onPressed: () {
                  addTx(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
                child: Text(
                  'Add Transaction',
                  style: TextStyle(
                    color: Color.fromARGB(255, 74, 195, 159),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}
