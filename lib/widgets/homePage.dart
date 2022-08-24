import 'package:flutter/material.dart';

import '../model/transaction.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Transaction> transactions = [
    Transaction(
      id: "123",
      price: 60000,
      title: "Shim",
      date: DateTime.now(),
    ),
    Transaction(
      id: "124",
      price: 80000,
      title: "Shapka",
      date: DateTime.now(),
    ),
    Transaction(
      id: "124",
      price: 50000,
      title: "Shapka",
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String name, double newprice) {
    setState(() {
      transactions.add(Transaction(
          id: "123", price: newprice, title: name, date: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(addTr: _addTransaction,),
        TrnsactionList(
          transactions: transactions,
        ),
      ],
    );
  }
}
