import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

import '../model/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTrList;
  const Chart({Key? key, required this.recentTrList}) : super(key: key);
  
  List<Map<String, Object>> get groupTrList {
    return List.generate(7, (index) {
      num totalSum = 0.0;
        
      final weekDay = DateTime.now().subtract(Duration(days: index));
      if (weekDay.day == recentTrList[index].date!.day &&
          weekDay.month == recentTrList[index].date!.month &&
          weekDay.year == recentTrList[index].date!.year) {
        totalSum = totalSum + recentTrList[index].price!;
      }
      return {
        "date": DateFormat("E").format(weekDay).substring(0, 3),
        "amount": totalSum
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Column(children: [
        Text("")
      ]),
    );
  }
}
