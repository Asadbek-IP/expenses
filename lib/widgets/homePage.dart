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
 

 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TrnsactionList(
        //   transactions: transactions,
        // ),
      ],
    );
  }
}
