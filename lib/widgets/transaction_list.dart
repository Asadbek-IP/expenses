import 'package:expenses/model/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrnsactionList extends StatelessWidget {
  List<Transaction> transactions;
   TrnsactionList({required this.transactions, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      child: SingleChildScrollView(
        child: Column(
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
                          border: Border.all(width: 2.0, color: Colors.purple),
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
                            DateFormat.yMMMMd().format(tr.date!),
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
      ),
    );
  }
}