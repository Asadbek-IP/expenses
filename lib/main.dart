import 'package:expenses/columnexcample.dart';
import 'package:expenses/transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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

  DateTime? _selectedDate;

  void _presentDatePicker() async {
    // showDatePicker is a pre-made funtion of Flutter
    await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2020),
            lastDate: DateTime.now())
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }
      setState(() {
        // using state so that the UI will be rerendered when date is picked
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Harajatlar'),
        ),
        body: Column(
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
            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                          labelText: "Mahsulot nomi",
                        ),
                      ),
                      const TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: "Narxi",
                            suffixText: "so'm  ",
                            suffixStyle:
                                TextStyle(fontSize: 18, color: Colors.purple)),
                      ),
                      TextButton(
                        onPressed:  _presentDatePicker, 
                        child: const Text(
                          "Sana",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: transactions.map((tr) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                    elevation: 5,
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 2.0, color: Colors.purple),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  tr.price.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " so'm",
                                  style: TextStyle(
                                      color: Colors.purple,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tr.title!,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                DateFormat().format(tr.date!),
                                style: const TextStyle(color: Colors.grey),
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