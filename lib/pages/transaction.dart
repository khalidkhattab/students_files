import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:testhive/model/boxes.dart';
import 'package:testhive/model/transaction.dart';
class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    Hive.close();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('data') ,
    );
  }
}
Future addTransaction({
  required String name,
  required double amount,
  required bool isExpense
}) async{
final transaction =Transaction(name, DateTime.now(), true, 20.0);
final box=Boxes.getTransactions();
box.add(transaction);
}
//name, DateTime.now(), isExpense, amount