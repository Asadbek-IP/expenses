import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChartBar extends StatelessWidget {
  String? date;
  double? totalSum;
  double? weekTotalSum;
   ChartBar({Key? key,required this.date,required this.totalSum,this.weekTotalSum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text(totalSum.toString()),
          SizedBox(height: 5,),
          Container(
            width: 10,
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
          ),
          SizedBox(height: 5,),
          Text(date.toString()),
        ],
    );
  }
}