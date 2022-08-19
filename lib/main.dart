import 'package:expenses/columnexcample.dart';
import 'package:expenses/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const ColumnExcample());
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
      Transaction(
      id: "124",
      price: 90000,
      title: "Shapka",
      date: DateTime.now(),
    ),
    Transaction(
      id: "127",
      price: 20000,
      title: "Shapka",
      date: DateTime.now(),
    ),
    Transaction(
      id: "127",
      price: 20000,
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
                              border: Border.all(width: 2.0, color:  Colors.purple),

                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  tr.price.toString(),
                                  style: const TextStyle(fontSize: 20,color: Colors.purple,fontWeight: FontWeight.bold),
                                ),
                                Text(" so'm",style: TextStyle(color:Colors.purple,fontSize: 13,fontWeight: FontWeight.w700),)
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr.title!,
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                tr.date.toString().substring(0,10),
                                style: const TextStyle(color: Colors.white),
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