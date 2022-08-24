import 'package:expenses/model/transaction.dart';
import 'package:expenses/widgets/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'widgets/new_transaction.dart';
import 'widgets/transaction_list.dart';

void main(List<String> args) {
  runApp(const Expenses());
}

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Harajatlar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Card(
                  color: Colors.green,
                  elevation: 5,
                  child: Text(
                    'Diagramma qis',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              HomePage()
            ],
          ),
        ),
      ),
    );
  }
}
// expenses