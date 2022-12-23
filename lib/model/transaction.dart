import 'package:hive/hive.dart';
part 'transaction.g.dart';

@HiveType(typeId: 0)
class Transaction extends HiveObject{

  @HiveField(0)
  late String name;
  @HiveField(1)
  late DateTime createdDate;
  @HiveField(2)
  late bool isExpense;
  @HiveField(3)
  late double amount;


  Transaction(this.name, this.createdDate, this.isExpense, this.amount);
}