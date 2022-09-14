import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  Function addTr;
  NewTransaction({required this.addTr, Key? key}) : super(key: key);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  TextEditingController mnController = TextEditingController();
  TextEditingController narxController = TextEditingController();

  void addNewTr() {
    if (mnController.text.isEmpty || narxController.text.isEmpty) {
      return;
    }
    widget.addTr(mnController.text, double.parse(narxController.text));

    mnController.clear();
    narxController.clear();
 
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Mahsulot qo'shish",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  )),
              TextField(
                controller: mnController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                  labelText: "Mahsulot nomi",
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: narxController,
                keyboardType: TextInputType.number,
                onSubmitted: (_) => addNewTr(),
                decoration: InputDecoration(
                   border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      ),
                    labelText: "Narxi",
                    suffixText: "so'm   ",
                    suffixStyle: TextStyle(fontSize: 18, color: Colors.purple)),
              ),
              TextButton(
                onPressed: addNewTr,
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
