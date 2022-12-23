import 'package:hive/hive.dart';
import 'package:testhive/model/transaction.dart';

class Boxes {
  static Box<Transaction> getTransactions() {
    return Hive.box<Transaction>('transactions');
  }
}
