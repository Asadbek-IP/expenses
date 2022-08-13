import 'package:expenses/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Expenses());
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
      price: 200.0,
      title: "Shim",
      date: DateTime.now(),
    ),
    Transaction(
      id: "124",
      price: 100.0,
      title: "Shapka",
      date: DateTime.now(),
    ),
      Transaction(
      id: "124",
      price: 100.0,
      title: "Shapka",
      date: DateTime.now(),
    ),
      Transaction(
      id: "124",
      price: 100.0,
      title: "Shapka",
      date: DateTime.now(),
    ),
    Transaction(
      id: "127",
      price: 100.0,
      title: "Shapka",
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Harajatlar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            Column(
              children: transactions.map((tr) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    color: Colors.green,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.5, color: Colors.amberAccent),
                            ),
                            child: Text(
                              tr.price.toString(),
                              style: const TextStyle(fontSize: 16,color: Colors.amberAccent),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            children: [
                              Text(
                                tr.title!,
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                tr.date.toString(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
// expenses