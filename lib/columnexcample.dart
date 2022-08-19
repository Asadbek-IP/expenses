import 'package:flutter/material.dart';

class ColumnExcample extends StatelessWidget {
  const ColumnExcample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
             height: double.infinity,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(8),
             height: double.infinity,
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 2, 
            child: Container(
              margin: EdgeInsets.all(8),
             height: double.infinity,
              color: Colors.green,
            ),
          ),
        ],),
      ),
    );
  }
}
