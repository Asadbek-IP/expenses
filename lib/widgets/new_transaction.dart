import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
   Function addTr;
   NewTransaction({required this.addTr, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController mnController = TextEditingController();
    TextEditingController narxController = TextEditingController();
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
               controller: mnController,
                decoration: InputDecoration(
                  labelText: "Mahsulot nomi",
                ),
              ),
               TextField(
                controller: narxController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "Narxi",
                    suffixText: "so'm   ",
                    suffixStyle: TextStyle(fontSize: 18, color: Colors.purple)),
              ),
              TextButton(
                onPressed: () {
                  addTr(mnController.text,double.parse(narxController.text));
                },
                child: Text(
                  "Xarajatni qo'shish",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
