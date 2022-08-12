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
          children:  [
            Container(
              width: double.infinity,
            ),
            Container(
              child: const Card(
                color: Colors.red,
                elevation: 5,
                child: Text(
                  'Diagramma qismi',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:   Card(
                color: Colors.blue,
                elevation: 5,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    'List Transtaction',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
