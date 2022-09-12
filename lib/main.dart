import 'package:expenses/model/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'widgets/new_transaction.dart';
import 'widgets/transaction_list.dart';

void main(List<String> args) => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Quicksand",
        appBarTheme: AppBarTheme(
          color: Colors.purple
        ),
        accentColor: Colors.blue,
        primarySwatch: Colors.purple
      ),
      home: Expenses(),
    );
  }
}

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
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

  void startAddNewTr(BuildContext ctx) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: ctx,
        builder: (_) => NewTransaction(addTr: _addTransaction));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>startAddNewTr(context),
        child: Icon(
          Icons.add,
          size: 36,
        ),
      ),
      appBar: AppBar(
        title: const Text('Harajatlar'),
        actions: [
          IconButton(
              onPressed: () => startAddNewTr(context),
              icon: Icon(
                Icons.add,
                size: 32,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            TrnsactionList(transactions: transactions),
          ],
        ),
      ),
    );
  }
}
// expenses