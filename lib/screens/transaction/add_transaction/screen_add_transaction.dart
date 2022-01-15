import 'package:flutter/material.dart';

class ScreenAddTransaction extends StatelessWidget {
  static const routeName = 'add_transaction';
  const ScreenAddTransaction({Key? key}) : super(key: key);

  /*
  Purpose of Transaction
  Date of transaction
  Amount
  Category Type
  Income/Expense radio Button
  */

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Purpose',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Amount',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}