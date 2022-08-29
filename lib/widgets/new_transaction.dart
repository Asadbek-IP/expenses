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

  void addNewTr(){

    if(mnController.text.isEmpty || narxController.text.isEmpty ){
      return;
    }
   widget.addTr(mnController.text,double.parse(narxController.text));

   mnController.clear();
   narxController.clear();
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
                onSubmitted: (_)=>addNewTr(),
                decoration: InputDecoration(
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
