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
      for(int i=0;i<recentTrList.length;i++){
        if (weekDay.day == recentTrList[i].date!.day &&
          weekDay.month == recentTrList[i].date!.month &&
          weekDay.year == recentTrList[i].date!.year) {
        totalSum = totalSum + recentTrList[i].price!;
      }
      }
      return {
        "date": DateFormat("EEEE").format(weekDay).substring(0, 3),
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
